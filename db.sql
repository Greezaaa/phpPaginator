CREATE DATABASE
    IF NOT EXISTS paginator DEFAULT CHARACTER SET = 'utf8mb4'
CREATE TABLE
    `paginator`.`articulos` (
        `id` INT(11) NOT NULL AUTO_INCREMENT,
        `titulo` VARCHAR(255) NOT NULL,
        `contenido` VARCHAR(255) NOT NULL,
        `create_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB;

INSERT INTO
    `articulos` (
        `id`,
        `titulo`,
        `contenido`,
        `create_at`
    )
VALUES (
        NULL,
        'Primer artículo',
        '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Segundo artículo',
        '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Tercer artículo',
        '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Cuarto artículo',
        '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Quinto artículo',
        '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Secto artículo\r\n',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Septimo artículo',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Octavo artículo',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    ), (
        NULL,
        'Noveno artículo',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eos dolor molestiae, sunt eligendi autem quibusdam temporibus quae ipsam nulla assumenda omnis, magni quam cupiditate nobis itaque perspiciatis laudantium. Consequuntur.',
        current_timestamp()
    )