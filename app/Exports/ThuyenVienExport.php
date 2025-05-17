<?php
namespace App\Exports;

use App\Models\User;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ThuyenVienExport implements FromCollection,WithHeadings
{
    public $i = 1;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return User::select(
            'users.id',
            'users.name',
            DB::raw('COUNT(test_attempts.id) as attempts_count'),
            DB::raw('AVG(test_attempts.score) as average_score'),
            'positions.name as position_name'
        )
        ->leftJoin('test_attempts', 'users.id', '=', 'test_attempts.user_id')
        ->leftJoin('thuyen_viens', 'users.id', '=', 'thuyen_viens.user_id')
        ->leftJoin('positions', 'thuyen_viens.position_id', '=', 'positions.id')
        ->groupBy('users.id', 'users.name', 'positions.name')
        ->orderBy('average_score', 'desc')
        ->take(10)
        ->get();

    }
    /**
     * Returns headers for report
     * @return array
     */
    public function headings(): array {
        return [
            '#',
            'Thuyền viên',
            'Chức danh',
            "Số lượt thi",
            "Điểm TB"
        ];
    }

    public function map($user): array {
        return [
            $i++,
            $user->name,
            $user->position_name,
            $user->attempts_count,
            number_format($thuyen_vien->average_score)
        ];
    }
}
