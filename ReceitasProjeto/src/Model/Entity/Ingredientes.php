<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

class Bookmark extends Entity
{
    protected $_accessible = [
        'name' => true,
    ];
}
