## users テーブル

| Column              | Type       | Options                        |
| ------------------  | ---------- | ------------------------------ |
| email               | string     | NOT NULL, ユニーク制約           |
| encrypted_password  | string     | NOT NULL                       |
| name                | string     | NOT NULL                       |
| profile             | text       | NOT NULL                       |
| occupation          | text       | NOT NULL                       |
| position            | text       | NOT NULL                       |

### Association

- has_many :prototypes
- has_many :comments


## prototypes テーブル

| Column       | Type       | Options                        |
| ------       | ---------- | ------------------------------ |
| title        | string     | NOT NULL                       |
| catch_copy   | text       | NOT NULL                       |
| concept      | text       | NOT NULL                       |
| user         | references | NOT NULL, 外部ｷｰ                |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column      | Type       | Options                        |
| ----------  | ---------- | ------------------------------ |
| content     | text       | NOT NULL                       |
| prototype   | references | NOT NULL, 外部ｷｰ                |
| user        | references | NOT NULL, 外部ｷｰ                |

### Association

- belongs_to :user
- belongs_to :prototypes
