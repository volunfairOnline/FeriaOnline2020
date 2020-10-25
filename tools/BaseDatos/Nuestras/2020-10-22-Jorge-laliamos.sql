-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-10-2020 a las 19:21:18
-- Versión del servidor: 5.7.12-log
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laliamos`
--
CREATE DATABASE IF NOT EXISTS `laliamos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `laliamos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id_voluntariado` int(11) NOT NULL,
  `continente_lugar` varchar(20) NOT NULL,
  `pais_lugar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paises a realizar el voluntariado';

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_voluntariado`, `continente_lugar`, `pais_lugar`) VALUES
(1, 'Europa', 'España'),
(2, 'Asia', 'Asia'),
(3, 'Oceanía', 'Oceanía'),
(4, 'America del Sur', 'America del Sur'),
(5, 'Centro America', 'Centro America'),
(6, 'America del Norte', 'America del Norte'),
(7, 'Africa', 'Africa'),
(8, 'Otro', 'Otro'),
(9, 'Europa', 'Madrid'),
(10, 'Europa', 'Europa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ongs`
--

CREATE TABLE `ongs` (
  `id_ong` int(11) NOT NULL,
  `nombre_ong` varchar(100) DEFAULT NULL,
  `descripcion_ong` longtext,
  `voluntariado_ong` longtext,
  `rs_ong` varchar(100) DEFAULT NULL,
  `email_ong` varchar(100) DEFAULT NULL,
  `logo_ong` text,
  `fecha_inscripcion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Descripción general de todas las ONGs que participan en Volunfair';

--
-- Volcado de datos para la tabla `ongs`
--

INSERT INTO `ongs` (`id_ong`, `nombre_ong`, `descripcion_ong`, `voluntariado_ong`, `rs_ong`, `email_ong`, `logo_ong`, `fecha_inscripcion`) VALUES
(1, 'HERMANITAS DE LOS POBRES', 'Asilo de ancianos. Comunidad religiosa que junto a los colaboradores acogemos, acompañamos y cuidamos hasta el termino de sus vidas a personas mayores con pocos recursos económicos… Al ejemplo de Santa Juana Jugan.', 'Acompañar, servir, alegrar... a peronas mayores pobres y/o solas', 'https://www.hermanitasdelospobres.es', 'cdadalmagro@alfaexpress.net', 'hermanitas-pobres.png\n', '0000-00-00 00:00:00'),
(2, '21Kilómetros', '21Kilómetros es una organización sin ánimo de lucro, cuyo objetivo es dar a conocer entre el sector universitario y profesional las distintas formas de ayudar que hay en Madrid. Para ello colaboramos con numerosos centros, proyectos solidarios y ONGs, organizando distintas actividades y eventos. \n\n¿Algún ejemplo de lo que hacemos? Nuestra actividad se divide en tres grandes sectores: \n1. Voluntariado con gente de la calle y convictos (reparto de cenas por la calle, comedores sociales, partidos de fútbol en la cárcel...).\n2. Voluntariado con niños y enfermos (incluyendo distintos hospitales, asilos, albergues, casas de acogida...).\n3. Adoraciones y coro: organizamos una hora santa al mes para rezar por todos los voluntariados. Y nuestro coro, además de acompañar la oración en estos eventos, participa activamente en los voluntariados y organiza eventos para recaudar fondos cuando son necesarios. \n\n¿Quieres saber más? Consulta nuestra web y pásate por nuestro stand durante Volunfair ?? http://www.21kilometros.org', 'Nuestras actividades son distintas todas las semanas. Por poner algún ejemplo, las actividades que tenemos programadas para el mes de Noviembre son las siguientes:\n- Reparto de cenas por la calle (Madrid centro) y desayunos en la Cañada Real.\n- Acompañamiento a personas de la tercera edad en un centro.\n- Acompañamiento a enfermos del Cottolengo de Madrid. \n- Ayuda a las Misioneras de la Caridad en cuidados de enfermos de SIDA. \n\nUna vez completada la actividad, si los voluntarios quieren comprometerse a asistir a un voluntariado, les pondremos en contacto con las asociaciones que acudan periódicamente. \n', 'Instagram y Facebook: 21 Kilómetros', '21kilometros.org@gmail.com', '21_kilometros.jpg\n', '0000-00-00 00:00:00'),
(3, 'humana', 'Fomentamos el voluntariado internacional con un programa que combina 3 meses de formación en Dinamarca y 6 en terreno (Malawi, Zambia, Mozambique e India)', 'Voluntariado internacional:\n- 3 meses de formación en Dinamarca (cooperación y desarrollo)\n- 6 meses en terreno (Malawi, Zambia, Mozambique e India)\n- 1 mes de promoción en Europa', 'https://www.facebook.com/VoluntariosHUMANA/', 'voluntarios@humana-spain.org', 'humana.jpg\n', '0000-00-00 00:00:00'),
(4, 'Jóvenes para la Misión', 'Grupo de jóvenes de la delegación de misiones de Madrid.', 'Desde su nacimiento en 2007, somos el grupo de jóvenes de la Delegación de Misiones de Madrid, dentro de las OMP de España, y estamos al servicio de toda la diócesis. Como tal, la naturaleza del grupo se apoya en tres pilares fundamentales:\n\nLa oración. Esta debe ser siempre el centro de cualquier vida cristiana, pues como dice el Papa Francisco: “la oración nos cambia el corazón”. Es por ello que todos los primeros viernes de mes nos unimos a todos los jóvenes de Madrid en la Vigilia de Oración que convoca nuestro arzobispo en la Catedral. Y no solo eso, sino que también es nuestra tarea apoyar a los misioneros que están dando su vida cada día en los territorios de misión. \nLa formación, puesto que es vital no solo recibir la llamada de Dios a la misión o a la animación misionera, sino también formarse y conocer todas las implicaciones de la misma. Para ello tenemos un contacto directo con todos los documentos misioneros de la Iglesia, conocemos la espiritualidad de diferentes congregaciones dedicadas a la misión como las misioneras de la caridad o los javerianos y recibimos formación de nuestro delegado. Y todo esto tiene lugar los segundos viernes de mes por la tarde en la Delegación de Misiones. \nLa animación misionera, que consiste en poner en práctica todo lo aprendido y apoyar a la Delegación en todas sus actividades, pues quien tiene vocación misionera es misionero tanto aquí como en tierra de misión. En estas actividades se encuentra desde el DOMUND hasta Vocaciones Nativas, pasando por Sembradores de Estrellas y muchas otras. Es nuestra misión animar la dimensión misionera de cada cristiano pues “un cristiano es misionero desde el bautismo”.\n\nEstamos enamorados de la misión y este es el sitio al que Dios nos llama ahora para ir descubriendo nuestra vocación.\nEstamos al servicio de toda la diócesis, especialmente de los cristianos que quieren conocer la misión, y siempre estás invitado a escribirnos, ponerte en contacto con nosotros o venir una tarde al grupo a conocer el grupo de jóvenes de la Delegación.', 'Facebook e Instagram: Jóvenes para la Misión', 'pablo.eldeares@gmail.com', 'jovenes-mision.jpg\n', '0000-00-00 00:00:00'),
(5, 'Mater Salvatoris de Kalalé', 'Colegio en kalalé (Benin)', 'Voluntariado en el colegio de Kalalé, dando clases, apoyo', 'Instagram y facebook: colegiomatersalvatoriskalale o en la web http://kalale.matersalvatoris.org/', 'info.kalale@matersalvatoris.org', 'mater-salvatoris.png\n', '0000-00-00 00:00:00'),
(6, 'Gentinosina Social', 'Asociación sin ánimo de lucro para la cooperación y la acción social de manera local y global. Combate la desigualdad y utiliza el periodismo como arma para sensibilizar a la sociedad sobre las injusticias en nuestro entorno.', '- Voluntariado de verano en Burkina Faso con más de 500 alumnos de escuelas rurales al sur del país. \n- Voluntariado virtual y presencial en España (Madrid y Cáceres)\n- Voluntariado en el hogar Luceros del Amanecer en Nicaragua, con 120 niños y niñas de la ciudad de Camoapa.\n- Voluntariado en la escuela Francisco González Bocanegra en el estado de Sinaloa (México). Oferta de voluntariado pendiente de definir.', '@Gentinosina', 'jhm@gentinosina.org', 'gentinosina-social.png\n', '0000-00-00 00:00:00'),
(7, 'GHO VOLUNTARIADO INTERNACIONAL', 'GHO (Grow Helping Others) nace de la necesidad de muchas personas de vivir experiencias inolvidables participando en acciones de voluntariado, contando con un apoyo diario emocional y logístico, que les asegure y les informe sobre la realidad de la experiencia, con el objetivo de crecer personalmente ayudando a otros.', 'Programas de voluntariado desde 2 semanas durante todo el año en:\n\nGhana\n-Proyecto orfanato\n-Proyecto escuela\n-Proyecto salud\n-Proyecto construcción\n\nIndia\n-Proyecto orfanato\n-Proyecto salud\n\nMarruecos\n-Proyecto infantil\n-Proyecto construcción', '@ghovoluntariado', 'info@growhelpingothers.com', 'gho.png\n', '0000-00-00 00:00:00'),
(8, 'ASPRODALBA', 'Asociación para la promoción de las personas con discapacidad intelectual del Levante Almeriense.', 'Proyecto de voluntariado para jovenes y de todas las edades en su tiempo de ocio para compartir y dar apoyos a personas cin discapacidad intelectual', 'Facebook: ASPRODALBA', 'voluntariadoasprodalba@gmail.com', 'asprodalba.jpg\n', '0000-00-00 00:00:00'),
(9, 'Fundación Amoverse', 'La Fundación Amoverse nace en el año 2001 en el barrio madrileño del Pozo del Tío Raimundo (Vallecas) con el fin de acompañar a los niños/as, adolescentes, jóvenes y sus familias en su inserción social y laboral, impulsando oportunidades de aprendizaje, crecimiento e integración. Hoy contamos con diferentes centros en Vallecas y Tetuan, Madrid, desde donde llevamos a cabo programas integrales de Acompañamiento Famliar, de Intervención Socio-educativa e Intervención socio-laboral.', 'Atendiendo a las necesidades familiares compartidas y específicas de cada barrio, se quiere ofrecer un espacio donde compartir, crecer y aprender unos/as de otros/as. A través del vínculo se va construyendo la propia historia con las fortalezas y dificultades de cada uno atendiendo al área emocional, cognitiva, educativa y social. \n\nTodo esto se lleva a cabo en espacios compartidos a través de actividades, donde convivir, relacionarse e integrarse en el contexto, de manera participativa contando con personas voluntarias, para la búsqueda de la justicia y el cambio social. Sin el voluntariado este sueño no sería posible. \n\nDurante el curso escolar trabajamos con los menores por las tardes desde el espacio de aprendizaje (actividades donde poder desarrollar las competencias que permitan al menor adquirir los conocimientos requeridos a su edad y poder despertar el interés y la curiosidad por aprender) y el espacio de crecimiento (actividades que busquen tanto el autoconocimiento y crecimiento personal como la búsqueda de disfrute y crecimiento a través del juego, las actividades manuales y la relación con los compañeros/as). Durante el verano se realizan los campamentos En función de la edad las actividades se adaptan así que si estás interesado estaremos encantados de ampliarte la información. \n\nAdemas puedes ser voluntario en el área de formación y acompañamiento laboral con jóvenes y adultos y dar apoyo al equipo técnico en gestión, comunicación...', 'https://fundacionamoverse.org/', 'voluntariado@fundacionamoverse.org', 'amoverse.jpg\n', '0000-00-00 00:00:00'),
(10, 'Misión País España', '\nMisión País es un proyecto de jóvenes\nmisionero que quiere cambiar España, dándonos a los demás. Nuestra Misión es llevar a Dios a todo el mundo, empezando por los pequeños pueblos de España.', 'Actualmente, tenemos 10 misiones abiertas en 10 pueblos distintos de España!! La misión consiste en ir durante una semana a un pueblo español a misionar, compartir la fe, ayudar, visitar enfermos, hacer voluntariado, dar alegría al pueblo...', 'Instagram: @misionpaisesp o en la web www.misionpais.es', 'antoniobecu@gmail.com', 'mision_pais.jpg\n', '0000-00-00 00:00:00'),
(11, 'AMIGOS DE SIERRA LEONA', 'Nuestro objetivo es proporcionar asistencia escolar, sanitaria y alimentaria a los niños huérfanos de Sierra Leona, así cómo participar y contribuir en la mejora de las condiciones de vida de sus habitantes.\n\nPor eso, promovemos desde la base y a píe de campo la educación, la salud y la seguridad alimentaria, además de la gestión de becas y el envío de suministros médicos.', 'El proyecto principal es participar directamente, in situ, en la educación y enseñanza de los niños de la escuela-orfanato de Ma-Tindi, Sierra Leona. También, desde septiembre de 2018, tenemos un centro de salud al lado de la escuela, donde los estudiantes también pueden prestar su ayuda.', 'Email: info@ amigosdesierraleona.com www.amigosdesierraleona.com Facebook: Amigos de Sierra Leona-AD', 'salonetiti@yahoo.com', 'amigos-sierra-leona.png\n', '0000-00-00 00:00:00'),
(12, 'Fundación Manantial', 'Fundación Manantial es una entidad sin ánimo de lucro\nformada en 1995 por asociaciones de familiares para mejorar la atención social y sanitaria de las personas con problemas de salud mental.\nNuestro trabajo está orientado a la recuperación de las personas y pretende cubrir sus necesidades de atención social, empleo, tutela y reinserción desde el ámbito penitenciario. Impulsamos y ponemos en marcha iniciativas\nde prevención y atención temprana, sensibilización, asistenciales y psicoterapéuticas que facilitan la incorporación y participación real en la sociedad de las personas con problemas de salud mental.', 'Apoyo en ocio y tiempo Libre.\nAcompañamiento afectivo.\nApoyo en talleres específicos( música, teatro, cómic, baile, robótica ,etc...)', 'https://www.facebook.com/FundacionManantial https://twitter.com/VoluntariosFM https://www.instagram.', 'mdiaz@fundacionmanantial.org', 'fund-manantial.png\n', '0000-00-00 00:00:00'),
(13, 'ASOCIACION CULTURAL NORTE JOVEN', 'La MISIÓN de Norte Joven es promover el desarrollo personal y la integración sociolaboral de personas en situación de desventaja social a través de su formación, del acceso al empleo y de la sensibilización de la sociedad', 'somos una escuela de segunda oportunidad para personas que han abandonado el sistema escolar, dándoles una formación cultural básica y en un oficio. Llevamos más de 30 años cambiando proyectos de vida', 'www.nortejoven.org', 'voluntariado@nortejoven.org', 'norte-joven.png\n', '0000-00-00 00:00:00'),
(14, 'ClaseaTe', 'Organizamos ocio solidario', 'Los universitarios, asi como cualquier otro voluntario, puede participar como profe impartiendo una clase suelta de la actividad aue elija, recaudando fondos para la ong que desee, asi como asistiendo como participante a cualquiera de nuestros talleres, con su donativo que confirmaría la inscripción al taller. También puedes participar como parte del equipo organizativo de ClaseaTe!', 'Facebook y twitter: ClaseaTe', 'Maite.iturralde@claseate.com', 'claseate.jpg\n', '0000-00-00 00:00:00'),
(15, 'KUBUKA', 'Nuestra misión es crear un desarrollo sostenible en las comunidades más vulnerables de Kenia y Zambia, centrándonos en el emprendimiento y en la educación como motores de cambio, apoyando proyectos que nazcan y perduren gracias al esfuerzo y empoderamiento de la comunidad beneficiaria.', 'Nuestros proyectos se centran en educación, emprendimiento e inclusión social; casas de acogida, colegios, proyectos deportivos, centros de tutorías, plantas de reciclaje, microcréditos, etc.', 'Instagram, facebook, twitter y youtube: KUBUKA', 'alejandracgil@kubuka.org', 'kubuka.png\n', '0000-00-00 00:00:00'),
(16, 'Misioneros Javerianos y Franciscanas Misioneras de María', 'Misioneros Javerianos, congregación cuya única finalidad es la misión Ad Gentes. Somos Franciscanas Misioneras de María, una congregación que es de diversas naciones y culturas, en un mundo fragmentado, optamos por vivir juntas. Como misioneros y misioneras queremos manifestar el rostro de Dios siendo una presencia que humanice al lado de los que sufren y son abandonados. Nos comprometemos con otros en el cuidado de la creación y al servicio de la paz, de la justicia, allí donde sea más necesario.', 'Campo de trabajo con inmigrantes del 11 al 24 de julio. Queremos vivir la fraternidad con nuestros hermanos y hermanas inmigrantes y ensanchar nuestro corazón a otras realidades, creciendo y formándonos como grupo de fe. Abrazar con nuestras vidas, como Jesús, la fragilidad y vulnerabilidad del inmigrante que sufre la indiferencia del distanciamiento de nuestros corazones. Acercamiento a otras religiones con el deseo de crear puentes y estrechar lazos.\n\nEn Tetuán, Marruecos para los campos de Inmigrantes es dar cariño al inmigrante y así ensanchar el propio corazón. También se descubre el trabajo de la Iglesia en minoría en medio musulmán y una visión del inmigrante fuera del propio país. Se reflexiona, se reza y se comparte.\n\nTenemos otras actividades en el Sur de Marruecos para finales de julio y principios de agosto y quizás algo que se realice en Camerún o Chad que está en proyecto para agosto 2020\n', 'Facebook:Misioneros.javerianos', 'madridcarab@javerianos.org y rolandoruizduran@yahoo.fr', 'fmm-javieranos.jpg\n', '0000-00-00 00:00:00'),
(17, 'FUTURE FOR AFRICA', 'Future for Africa is a Ghanaian NGO working at a local level to promote and create an enabling future of hope for children in economically deprived using volunteering to provide and improve access to education, health, water and sanitation in rural communities in northern Ghana.', '- Teaching: Teach in partner schools on subjects such as mathematics, English, physical education, religious and moral education, ICT and Science. Under the supervision of locally trained teachers. Volunteers need not be qualified teachers to do so basic knowledge is sufficient for training the community whilst higher heights will be achieved at due cause.\n- Childcare: working with children that are deprived as a result of bad parenting or not having parents at all, volunteers will be able to have direct contact and help in catering for their needs to enable them feel at home and loved until they are integrated into the society.\n- Sports: our sport projects include football (soccer) which is the most common game in our world, basketball and handball volunteers with such special skill will help in the personal development of young sports men and women in the society.\n- Health care & sanitation: we will coordinate with some health centre and support from the Ghana Health Service to assist in giving medical needs to deprived and sick fellows who need medical attention \n- Construction: Working to improve the local infrastructure, educational facilities and Helping build our proposed training center and shelter. As a member of the construction project. Focusing on improving existing facilities and building on our land. From painting classrooms and creating board displays and plastering.', 'Website: www.future4afrika.org Instagram: @future4africa Twitter: @future4africagh Facebook: @future', 'inesrevgar@gmail.com', 'future4africa.png\n', '0000-00-00 00:00:00'),
(18, 'Asociación Pitote', 'Entidad sin animo de lucro que realiza actividades de ocio, deporte, educación y cultura de forma inclusiva.', 'Proyecto de deporte y de ocio donde realizamos diferentes actividades inclusivas en estos ámbitos. Estas actividades se realizan los sábados, gracias a las mismas los participantes se desarrollan a través de la interacción con personas con diferentes capacidades.\nTambién contamos con una semana de campamento, normalmente la primera semana de septiembre, y un campamento urbano la última semana de junio.', 'Facebook: Asociación Pitote, Twitter: @asoc_pitote, instagram: @asociacion_pitote, youtube: Asociaci', 'asociacionpitote@gmail.com', 'pitote.png\n', '0000-00-00 00:00:00'),
(19, 'AFS Intercultura España', 'AFS Intercultura es una organización educativa, no lucrativa, sin vinculaciones religiosas o políticas, y empeñada desde hace más de sesenta años en definir, fortalecer y generar aprendizajes en el campo de la interculturalidad. Nuestros programas de inmersión cultural dirigidos a alumnado y profesorado de más de sesenta países nos avalan en cada paso dado hasta el día de hoy.\nAFS Intercultura promueve la movilidad internacional de estudiantes y profesorado en experiencias de inmersión cultural intensivas (dos a seis meses) o anuales, en países como Sudáfrica, Alemania, Japón, Estados Unidos, Nueva Zelanda, Canadá o Francia entre otros destinos. Durante ese período los jóvenes acuden a clase en su nuevo instituto como un alumno más, y el profesorado se puede acercar durante sus vacaciones de verano a otras experiencias educativas en diferentes contextos culturales. \nPor otro lado, todos los años recibimos la visita de estudiantes enviados por nuestros socios internacionales de decenas de países que como los anteriores, estarán matriculados en centros españoles, enseñando y aprendiendo en su particular experiencia de inmersión cultural. En todo caso, para jóvenes participantes de envío o recepción, la experiencia sin duda cambiará sus vidas y les hará ganar en autonomía y autoestima, descubriendo su potencial como ciudadanos y ciudadanas globales. \n\n\nAFS Intercultura forma parte de AFS Intercultural Programs, que tiene su sede en Nueva York (EEUU) y goza de status consultivo ante el Consejo Económico y Social (ECOSOC) de la ONU (Organización de Naciones Unidas). Es miembro fundador de la Federación Europea para el Aprendizaje Intercultural (EFIL por sus siglas en inglés). EFIL agrupa a todas las entidades de AFS (28) presentes en los diferentes países europeos junto con Egipto, Túnez y Turquía. Esta organización, con sede en Bruselas, colabora con la Unión Europea en programas de educación intercultural, tiene rango consultivo ante la Organización de Naciones Unidas para la Educación, la Ciencia y la Cultura (UNESCO) y el Consejo de Europa. Además es miembro del European Youth Forum, una organización internacional creada por los consejos nacionales de la juventud y organizaciones no gubernamentales juveniles internacionales para representar los intereses de los/as jóvenes de toda Europa.\nAFS Intercultura pertenece al Consejo de la Juventud de España y está reconocida por el INJUVE (Instituto de la Juventud – Ministerio de Sanidad, Consumo y Bienestar Social) como entidad prestadora de servicios a la juventud.', 'Área de atención al Estudiante y a las Familias: \n• Tutorías\n• Orientaciones\n\nÁrea de atención a los centros educativos:\n• Acompañamiento\n• Acciones de sensibilización.\n\n\n\nÁrea de sensibilización y promoción:\n• Promoción de AFS Intercultura.\n• Promoción de los programas de AFS Intercultura.\n• Campañas de familias para acogimiento.\n• Campañas de voluntarios/as.\n\n\nÁrea de selección:\n• Entrevistas a candidatos de envío.\n• Entrevistas a familias de acogida.\n• Realización de jornadas de selección.\n', 'Instagram:afsintercultura_Esp y Facebook:AfsInterculturaEspana', 'cristina.mesa@afs.org', 'afs-intercultura.png\n', '0000-00-00 00:00:00'),
(20, 'Viajes Tumaini', 'Tumaini es una entidad sin ánimo de lucro registrada desde el año 2013 que facilita la realización de viajes solidarios y voluntariado internacional para empoderar a pequeñas ONG de África, Asia y América Latina. Trabajamos en 8 países diferentes y formamos y acompañamos a personas que quieren colaborar para construir un mundo más justo y solidario. Creemos en los viajes como herramienta de sensibilización, para abrir mentes y cambiar realidades.', 'Trabajamos con 18 proyectos de diferentes ámbitos (educativos, medio ambiente, centros de rescate de animales) en India, Nepal, Tailandia, Camboya, Indonesia, Kenia, Perú y Bolivia', 'Facebook: viajessolidariostumaini, Twitter:ViajesTumaini y Instagram:viajestumaini\n', 'info@viajestumaini.org', 'viajes-tuamini.jpg\n', '0000-00-00 00:00:00'),
(21, 'Sociedad de Misiones Africanas', 'Solidarios es una asociación de voluntarios sociales con más de 30 años de trabajo reconocido con diferentes colectivos en exclusión social: personas sin hogar, personas mayores, con diagnóstico de enfermedad mental, en prisiones y en hospitales. Está Declarada de Utilidad Pública.', 'Todo el voluntariado (Aulas de cultura en prisiones / Ocio con personas con enfermedad mental / acompañamiento a mayores / atención a personas sin hogar / visitas hospitalarias)', 'Facebook, Twitter y Instagram: @solidarios_es', 'corinamora@solidarios.org.es', '', '0000-00-00 00:00:00'),
(22, 'Asociación BLUA', 'BLUA voluntariado, es una organización sin ánimo de lucro cuyo objetivo principal es la sensibilización hacia cuestiones ambientales impulsando la preservación de la biodiversidad de nuestro planeta por el bienestar de las generaciones futuras. Ofrece voluntariados internacionales de corta o larga estancia en proyectos de protección de fauna salvaje, conservación, educación medioambiental y desarrollo sostenible.', 'Blua conecta a voluntarios de cualquier parte del mundo con pequeñas y grandes ONG, Fundaciones, Reservas y Santuarios que trabajan en la protección de fauna salvaje, la conservación y educación medioambiental y el desarrollo sostenible seleccionados por su seriedad, ética y compromiso con el planeta. Los proyectos de voluntariado tienen una participación mínima de 1 o 2 semanas y algunos dan la oportunidad de realizar prácticas o desarrollar investigaciones o trabajos de grado.', 'Facebook e Instagram: bluavoluntariado.', 'info@bluavoluntariado.org', 'blua.jpg\n', '0000-00-00 00:00:00'),
(23, 'HOGAR D.ORIONE', 'Centro residencial para personas adultas con discapacidad intelectual y alto nivel de dependencia.', 'Colonias de Cercedilla', 'Instagram:hogardonorione y Web: http://hogardonorione.org/', 'marhernandez@orionistas.org', 'don_orione.jpg\n', '0000-00-00 00:00:00'),
(24, 'AMAQTEDU', 'Voluntariado con personas sin hogar y en riesgo de exclusión por medio del arte. Actualmente, trabajando y desarrollando proyectos con Cáritas', 'Dos proyectos con Cáritas: Urgel y Laguna. En ambos centros, tenemos sesiones semanales: en Urgel son viernes y domingo; y en Laguna los viernes. \nPor otro lado, nos gustaría aumentar los talleres desarrollados y así, poder trabajar en más centros de Cáritas y con otras instituciones como Geranios.', 'Instagram: @amaqtedu', 'javiergbalbin@gmail.com', 'amaqtedu.jpg\n', '0000-00-00 00:00:00'),
(25, 'Youth, Wake-Up!', 'Somos un grupo de jóvenes comprometidos, profesionales y voluntarios que trabajamos en la transformación social de colectivos desfavorecidos en zonas de conflicto, a través de la involucración de los jóvenes en proyectos de cooperación y acción social. Los jóvenes locales se convierten así en los promotores de un cambio real en sus comunidades. \n\nA través de la colaboración intercultural entre jóvenes y entidades locales llevamos a cabo múltiples proyectos que contribuyen a la reducción de las desigualdades derivadas del contexto social, político y económico. Nuestras líneas de acción se centran en: el fomento de la paz y del voluntariado local, sanidad, vivienda, educación y ocio. \n\nGracias al trabajo de nuestros voluntarios llegamos a colectivos especialmente desfavorecidos en estas zonas de conflicto: jóvenes y niños en riesgo de exclusión social o con diversidad funcional, personas mayores sin recursos sociales o financieros, familias vulnerables y personas con enfermedades mentales.', 'Desde Youth, Wake-Up! ofrecemos dos programas de voluntariado:\n- Un programa de Larga Estancia- de 3 meses de duración, durante los meses de septiembre a junio, donde desarrollamos los proyectos mencionados anteriormente.\n- Un programa de verano- de 1 mes de duración, julio o agosto completo. Durante los meses de verano desarrollamos 2 summer camps además de dar apoyo a los proyectos desarrollados a lo largo del año.', 'Instagram: @youthwup Facebook: @youtwup Web: www.youthwakeup.org', 'volunteers@youthwakeup.org', 'youth-wake-up.png\n', '0000-00-00 00:00:00'),
(26, 'Cooperatour', 'ONGd especializada en la organización de voluntariados internacionales y viajes solidarios.', 'Proyectos educativos, medioambientales y sanitarios en Asia, Latinoamérica y África.', 'Instagram, Facebook, Youtube, Pinterest: Cooperatour', 'david@cooperatour.org', 'cooperatour.jpeg\n', '0000-00-00 00:00:00'),
(27, 'FUNDACIÓN HOGAR SÍ (RAIS)', 'Acompañamiento a la inserción sociolaboral de personas sin hogar', 'Proyectos de voluntariado en distintos proyectos con personas sin hogar (pisos semitutelados, pisos housing first, housing led, centro de día, etc)', 'Web: https://hogarsi.org/', 'sara.martinp@hogarsi.org', '', '0000-00-00 00:00:00'),
(28, 'AFAIJ Asociación para la Formación y las Actividades Interculturales para la Juventud', 'Voluntariado internacional, programa voluntariado europeo (Servicio Voluntario Europeo y Cuerpo Europeo de Solidaridad).', 'Voluntariado de distintos proyectos sociales o culturales en el extranjero de corta o larga duración', 'Facebook:AFAIJ-Voluntariado Internacional, Instagram: afaijspain y Web: https://afaij.org/', 'sve@afaij.org', 'afaij.gif\n', '0000-00-00 00:00:00'),
(29, 'ASOCIACIÓN SÍNDROME 22q11', 'La Asociación Síndrome 22q11, es una entidad sin ánimo de lucro constituida en el año 2011, por un grupo de seis familias apoyadas por el Departamento de Genética del Hospital Universitario La Paz, que, ante la poca información y conocimiento sobre el Síndrome 22q11.2, se unen con el objetivo de sensibilizar y visualizar socialmente su existencia, ofrecer apoyo y acompañamiento social y luchar por los derechos e intereses de las familias y afectados.\n\nEn el desarrollo de sus actividades la figura del voluntariado social es una pieza clave en la atención a estas personas, de ahí que la Asociación siempre muestre gran interés en participar de las acciones que de ellas y para ellas derive.\n\nEn definitiva, es un grupo humano abierto y participativo, que pretende crear un futuro mejor y más solidario para todas las familias y afectados por el Síndrome 22q11.2.', 'La Asociación realiza proyectos a través de los que la figura del voluntariado es un valor añadido en las actividades, especialmente la de los más pequeños.\n- Respiro familiar: proyecto de ocio inclusivo destinado a diferentes franjas de edad. Los niños afectados por el Síndrome 22q11 tienen dificultades para relacionarse al carecer de habilidades sociales. Este espacio pretende ser un escenario idóneo para que estos niños y niñas tengan un espacio dedicado a la diversión y a la amistad. Está abierto a afectados, hermanos, primos, amigos del cole y al barrio.\n- Café para familias: actividades de ocio dirigidas mientras lo padres tienen un espacio dónde compartir experiencias y miedos. Este espacio para las familias es muy importante ya que entre ellos se ofrecen esa parte de entendimiento emocional dónde el profesional no siempre puede llegar.', 'Facebook: 22q.es, Twitter: @22q_es y  Web: http://www.22q.es', 'Trabajadorsocial@22q.es', '22q.jpg\n', '0000-00-00 00:00:00'),
(30, 'Cooperación Internacional', 'Asociación que busca formar a la gente joven en una cultura de la solidaridad', 'Programa de voluntariado estable con distintos colectivos y Friday Revolution', 'twitter:@cooperacion, Instagram: cooperacion_internacional_ong  y Youtube: Cooperación Internacional', 'gvillalon@ciong.org', 'cooperacion-iternacional.png\n', '0000-00-00 00:00:00'),
(31, 'Jardín de Amor España', 'Proyecto guatemalteco que ofrece un servicio educativo, sanitario y alimentario a 140 niñxs en situación extrema de pobreza en Santa María de Jesús.', 'Finalización del centro de Secundaria\nAmpliación del centro de educación de primaria \nApoyo educativo en las aulas', '@jardin.de.amor', 'paula_96_@hotmail.es', 'jardin-de-amor.png\n', '0000-00-00 00:00:00'),
(32, 'Fundación Manuel María Vicuña', 'Promovemos el desarrollo humano de niñas y niños, jóvenes y principalmente mujeres en situación de vulnerabilidad socioeconómica, a través de una educación integral de calidad que actúa como motor de cambio social.', 'Proyectos de cooperación internacional Norte - Sur, Sur- Norte y Europa', 'Facebook, Instagram: Fundación Manuel María Vicuña', 'funmmv.social@gmail.com', 'fmmv.jpg\n', '0000-00-00 00:00:00'),
(33, 'Asociación Bokatas', 'Acompañamiento a personas sin hogar', '1. Realizar ruta de calle de acompañamiento a personas sin hogar una vez a la semana. \n2. Acompañamiento en el centro Tandem de Bokatas\n3. Charlas y talleres en colegios y otras instituciones con el objetivo de sensibilizar sobre el sinhogarismo.', 'Facebook e instagram: Asociación Bokatas', 'Irenefl@msn.com', 'bokatas.png\n', '0000-00-00 00:00:00'),
(34, 'Sociedad de Misiones Africanas', 'Sacerdotes y laicos comprometidos con la Primera Evangelización y el desarrollo de los pueblos de África que aún no conocen a Jesucristo y los más abandonados.', 'Conocimiento e integración en la vida de los pueblos de África y trabajo en apoyo a niños y acompañamiento a enfermos. Compartir con ellos la fe en Jesucristo que nos mueve a ser misioneros.', 'Facebook, Instagram:Sociedad de Misiones Africanas', 'asekovis@hotmail.com', '', '0000-00-00 00:00:00'),
(35, 'Fundación Soñar Despierto', 'Soñar Despierto es una Fundación con presencia en Barcelona, Madrid, Valencia y Sevilla, que desde hace más de una década colabora con los centros de acogida donde viven menores que, por diversos motivos, han tenido que ser separados de sus familias y han pasado a ser tutelados por el Estado.\n\nEl objetivo principal de Soñar Despierto radica en conseguir que todos ellos cuenten con las mismas oportunidades que el resto de niños de su edad, independientemente de las circunstancias que les han tocado vivir.\n\nNuestra misión es acompañar y apoyar a los menores residentes en centros de acogida, centros abiertos y centros residenciales procedentes de ambientes marginales y familias desestructuradas, desde el momento de su entrada el centro hasta que alcanzan la autonomía.\n\nY además, fomentar la participación social de la ciudadanía a través de acciones como el voluntariado implicado y responsable.', 'Los programas de voluntariado en Soñar Despierto son:\n\n- Educar Sonrisas, en el que un voluntario acude al centro de acogida a ayudar siempre al mismo niño/grupo de niños con los deberes del colegio o a mejorar en una asignatura en concreto.\n\nLa mayoría de los menores residentes en estos centros presentan un gran retraso en los estudios que, a medida que crecen, limita sus posibilidades a la hora de dar el salto a la vida adulta. Desde Soñar Despierto buscamos que los niños encuentren en los voluntarios un referente y una figura de apoyo que les acompañe a la hora de sacar adelante sus estudios.\n\n- Amigos Para Siempre, en el que un voluntario acude a la residencia durante el fin de semana a disfrutar de un tiempo de ocio con un grupo de niños (salir a merendar, ir a jugar al parque, dar un paseo...).\n\nPese a que los menores están perfectamente atendidos en los centros, presentan muchas veces grandes carencias afectivas y una serie de limitaciones a la hora de disfrutar del tiempo de ocio. En Soñar Despierto creemos en la importancia de que un niño juegue y se divierta, para ello, confiamos plenamente en la capacidad de nuestros voluntarios para hacerles disfrutar y sentirse especiales durante unas horas a la semana.', 'https://www.instagram.com/sdespiertomadrid/', 's.dejuana@sdespierto.es', 'sonar-despierto.png\n', '0000-00-00 00:00:00'),
(36, 'Religiosos Camilos', 'Dedicados a la humanización de la salud, cuidamos y enseñamos a cuidar', 'Voluntariado con personas mayores, final de la vida, acompañamiento en demencia, posibilidad de campo de trabajo y voluntariado internaconal', 'https://www.camilos.es o en facebook y twiter: Religiosos Camilos', 'roberto@camilos.es', 'religiosos-camilos.jpg\n', '0000-00-00 00:00:00'),
(37, 'Campos Misioneros de Trabajo', 'Proyecto de jóvenes que nace en la Parroquia de Santa María de Majadahonda. Los jóvenes que forman parte de CMT vienen a vivir una experiencia de misión junto a los misioneros de la caridad.', 'Ofrece una experiencia de misión junto a las Misioneras de la Caridad en verano en diferentes detinos, este último año estuvimos en Tánger, Barcelona, Sabadell, Lisboa y Zurich.\nDurante el año hay reuniones mensuales para formarse antes de la experiencia de verano.\nViviendo siempre tres pilares Grupo, Trabajo y Oración.', 'camposmisionerosdetrabajo@yahoo.es', 'camposmisionerosdetrabajo@yahoo.es', 'cmt.jpg\n', '0000-00-00 00:00:00'),
(38, 'Misioneras de la Caridad', 'Orden religiosa fundada por Madre Teresa de Calcuta.', 'A sus casas se puede ir como voluntarios tanto a las de Madrid como a las de el resto del mundo.', 'camposmisionerosdetrabajo@yahoo.es', 'camposmisionerosdetrabajo@yahoo.es', 'misioneras_caridad.png\n', '0000-00-00 00:00:00'),
(39, 'Fundación Síndrome de Down de Madrid (Down Madrid)', 'Desde Down Madrid trabajamos por mejorar la calidad de vida de las personas con síndrome de Down u otras discapacidades intelectuales y sus familias.', 'Voluntariado en diferentes actividades ocio, deporte, centro ocupacional, TIC, viajes y campamentos urbanos, entre otros.', 'Twiteer, Facebook. Instagram. Linkedin', 'diliana.rodriguez@downmadrid.org', '', '0000-00-00 00:00:00'),
(40, 'MasFuturo', 'Ayuda sin límite a madres en exclusión social y a seguir adelante con su embarazo', 'Recogida de alimentos, clases particulares, clases profesionales', '@masfuturo, #ResjuanPabloII', 'A.masfuturo@gmail.com', 'mas-futuro.jpg\n', '0000-00-00 00:00:00'),
(41, 'ASOCIACIÓN REDMADRE', 'La Asociación REDMADRE ofrece una ayuda real y concreta a todas aquellas madres que, por cualquier causa o circunstancia se encuentran solas ante un embarazo.', 'Voluntariado en nuestros almacenes y recogida de donaciones, además por supuesto de transmitir nuestro mensaje donde se encuentren.', 'Instagram y Facebook:ASOCIACIÓN REDMADRE', 'comunicacion@redmadremadrid.es', 'red-madre.jpg\n', '0000-00-00 00:00:00'),
(42, 'TECHO INTERNACIONAL', 'Buscamos la superación de la pobreza extrema en Latinoamérica desde el trabajo en conjunto entre jóvenes voluntario y pobladores de los asentamientos a través de la construcción de viviendas de emergencia.', 'Desde la coordinación de ares de construcción, voluntariado, fondos y cooperación, hasta voluntario en cualquiera de nuestras areas tanto comerciales como sociales. El liderazgo facilitador es nuestro goal standard en cuanto a voluntariado se trata.', '@techo_eu', 'jose.pandares@techo.org', '', '0000-00-00 00:00:00'),
(43, 'CARITAS MADRID UNIVERSITARIA', 'Te lo cuento en persona ;)', '¿No los conoces.....?', 'https://twitter.com/CaritasDPUMad ; https://www.instagram.com/caritasmadriduniversitaria/', 'p.enriquerueda@gmail.com', 'caritas.jpg\n', '0000-00-00 00:00:00'),
(44, 'Inakuwa Asociación', 'Inakuwa es un proyecto de cooperación en el que estudiantes y profesionales de todas las disciplinas se unen para lograr el desarrollo económico y social de comunidades sin recursos a través de lo único que se necesita para cambiar el mundo: la educación. Lo hacemos a través de un modelo integral de desarrollo donde cooperan cursos educativos, formación de formadores, trabajo con autoridades locales y una importante alianza con la universidad.', 'Los universitarios podrán formar parte de nuestros proyectos de cooperación, que tienen lugar en Rau (Moshi, Tanzania) y en Madrid, como voluntarios-cooperantes que desarrollarán un curso/taller, una investigación o un trabajo de formación a formadores o a autoridades locales. También podrán colaborar de manera puntual con la asociación y con el sustento logístico de la misma.', 'Instagram y facebook: @inakuwa_official y correo: colabora@inakuwa.org', 'mariacaso98@hotmail.es', 'inakuwa.png\n', '0000-00-00 00:00:00'),
(45, 'ASOCIACIÓN TAOUS (ASOT)', 'Asociación Taous (ASOT) es un programa de voluntariado de bajo coste\ndedicado a proporcionar a sus participantes la oportunidad de desarrollar\ndistintos proyectos en el Marruecos más auténtico.\nASOT surge a partir de la colaboración entre un miembro de la asociación\namericana Peace Corps Volunteer y los jóvenes marroquíes que residen en la\nzona donde se realiza el programa.', 'Nuestro proyecto o labor consiste entre otros valores, en:\nFacilitar el entretenimiento de los niños y jóvenes de Boudnib y alrededores, a\ntravés de actividades guiadas que promuevan un uso sano y productivo del ocio\ny tiempo libre.\nAportar conocimientos de idiomas (español, inglés, francés…), a fin de que esto\nfavorezca las oportunidades laborales y la calidad de vida de los chicos.\nElaborar proyectos educativos basados en distintos ámbitos (educación para la\nsalud, medio ambiente, sostenibilidad, convivencia, paz y\ndesarrollo…) que favorezcan el desarrollo personal de los jóvenes.\nFavorecer la educación en valores, los cuales son comunes para todos,\nindependientemente de nuestra cultura, religión o país. De este modo,\ntrabajaremos la igualdad, el respeto, el compañerismo, la tolerancia, la\nsolidaridad, la cortesía…etc.\nConcienciar al voluntario de que, el turismo responsable, la ayuda humanitaria y\nla cooperación internacional son las mejores vías para viajar y conocer el\nmundo, al mismo tiempo que permiten abordar desafíos comunes.', 'Facebook (Asociación Taous-Asot); Twitter (@asociacionTaous); Instagram (@asociacionTaous); Website ', 'Taousaso@gmail.com', 'taous.jpg\n', '0000-00-00 00:00:00'),
(46, 'ONGAWA', 'ONGAWA Ingeniería para el Desarrollo Humano es una ONG (Organización No Gubernamental) de Desarrollo que tiene como misión poner la tecnología al servicio del desarrollo humano para construir una sociedad más justa y solidaria. Luchamos para acabar con la pobreza y las desigualdades, especialmente las de género, y ponemos especial atención a los colectivos más vulnerables. Nos comprometemos con procesos de desarrollo que consigan resultados sostenibles en el tiempo y trabajamos por la realización plena de los derechos humanos, especialmente los de agua y saneamiento. En España, impulsamos una ciudadanía global, formada por personas comprometidas que no toleren la pobreza, con un pie en la calle y otro en las redes y aspiramos a contribuir a una universidad comprometida con el desarrollo humano sostenible.', 'Nuestra propuesta en la Universidad se presenta bajo el programa Global Challenge: \n- QUÉ ES: programa de voluntariado universitario en el que los estudiantes son protagonistas y por el que han pasado más de 3.000 alumnos/as\n- DESDE CUÁNDO El programa lleva 5 años en la UPM, universidad pionera en impulsarlo. Durante este curso se ha extendido a diez Universidades públicas de España. \n- CUÁL ES EL OBJETIVO: fortalecer las capacidades del alumnado para contribuir a un mundo más justo y sostenible, empezando por la Universidad\n- CON QUÉ ACTIVIDADES:, a través de espacios de formación, debate y participación\n- CÓMO SE TRABAJA: Todas las actividades están diseñadas por y para estudiantes, acompañadas por la Dirección de Cooperación y profes de UPM y por ONGAWA e Inspiraction\n- QUÉ APORTA A LAS/OS VOLUNTARIAS/OS (dicho por ellas/os): Trabajo en equipo, comunicación y escucha activa, trabajo en red, gestión positiva de conflictos, optimismo en la transformación social, conocimiento de la realidad, capacidad de análisis crítico de la realidad…\n', 'https://twitter.com/OngawaUni, https://www.instagram.com/globalchallenge.ongawa/', 'matilde.jimenez@ongawa.org', 'ongawa.jpg\n', '0000-00-00 00:00:00'),
(47, 'Asociación Lux Mundi', 'Asociación católica formada por laicos dedicada a la formación y a poner en contacto con experiencias de voluntariado a los interesados.', 'Formaciones, voluntariados de invierno, experiencias misioneras en verano.', 'Instagram: @a.luxmundi', 'javiervjinu@gmail.com', 'lux-mundi.jpg\n', '0000-00-00 00:00:00'),
(48, 'Jatari', 'Somos una asociación que colaboramos con la misión de San Ramón, en el distrito de Chanchamayo, Perú. Y como las ganas de ayudar no se nos quitan en Madrid, colaboramos con distintas órdenes religiosas y asociaciones para hacer voluntariados.', 'En verano una misión católica en Perú, en la que trabajamos con niños en su mayoría, y en Madrid tenemos apoyo escolar en parroquias de Vallecas.', '@misionjatari', 'asociacionjatari@gmail.com', 'jatari.png\n', '0000-00-00 00:00:00'),
(49, 'Fundación Entreculturas', 'ONGD Cooperacion Internacional basada en educación.', 'Voluntariado internacional de corta y larga duración.', 'Integram, facebook y twitter:Fundación Entreculturas', 'a.galera@entreculturas.org', '', '0000-00-00 00:00:00'),
(50, 'ASOCIACIÓN BARRO', 'Barró es una asociación socioeducativa, sin ánimo de lucro, que se inició en 1994 en el barrio de Vallecas de Madrid. Pretende intervenir, de forma sistemática y continuada, en coordinación con diferentes grupos e instituciones del entorno. Su finalidad fundamental es crear un espacio socioeducativo, de desarrollo personal y comunitario, para población en situación de vulnerabilidad, marginación y/o exclusión social.', '.\n', '@ASOCIACIONBARRO', 'eva.atance@asociacionbarro.org', 'barro.gif\n', '0000-00-00 00:00:00'),
(51, 'AMUSI', 'AMUSI es una ONG formada por jóvenes con ganas de colaborar en proyectos socioeducativos en diferentes regiones de Mozambique. Surgió de estas mismas ganas comunes de aportar lo que cada uno sabe en su campo para crear proyectos que pudieran mejorar la educación de los jóvenes.', 'A día de hoy contamos con dos proyectos entrelazados: la organización de un campamento de verano para los alumnos de la Escuela Primaria de Lumbo (Nampula) y la creación de una \'semana cultural\' con actividades lúdico-formarivas a impartir en un Jardim Infantil de la ciudad de Nampula.', 'Instagram: amusi_mozambique / www.amusi.org / amusimozambique@gmail.com', 'almormin@gmail.com', 'amusi.jpg\n', '0000-00-00 00:00:00'),
(52, 'MISION CEBU', 'Voluntariado de mision en filipinas. Organización que nace hace más de 3 años a través de la parroquia de Santo Tomás Moro, Majadahonda. Somos todo jóvenes emprendedores con la voluntad de trabajar y servir al prójimo. En este contexto, estamos involucrados más de 60 personas y sigue creciendo a medida que pasa el tiempo. Trabajamos durante el año para poder financiar la ayuda en Filipinas y nos apoyamos y colaboramos con otras asociaciones y parroquias tanto europeas como filipinas.', 'Proceso de Construcción e instalación completa en infraviviendas de paneles solares y aerogeneradores\n\nConstrucción de colectores de agua de lluvia y red de abastecimiento al barrio de pulangbato. Filipinas.\n\nTerminar cerramientos y cubierta de famrschool para la educación y formación agrícola de los filipinos\n\nTerminar cerramientos, solado e interior de capilla', 'Instagram @misioncebu y misioncebu.org', 'miguelczo.diaz@gmail.com', 'mision-cebu.png\n', '0000-00-00 00:00:00'),
(53, 'SETEMMCM', 'Somos una ong que trabaja para erradicar las injusticias entre los paises del Norte y del Sur , trabajandolo mediante la sensibilización y educación , apoyando el Comercio Justo', 'Estancias de uno o dos meses en verano en Paises del Sur , para conocer en primera persona otra realidad muy distinta a la que vivimos , viajando a Bolivia, Honduras, Guatemala, India, Nepal ,', '@setem_MCM', 'vvalentin@setem.org', 'setem.jpg\n', '0000-00-00 00:00:00'),
(54, 'Por la Sonrisa de un Niño', 'PSE (Por la Sonrisa de un niño) Es ONG francesa que se encuentra en Camboya. Se encarga de proteger y escolarizar a niños desde infantil hasta formaciones profesionales, para asegurarles un trabajo y un futuro digno fuera de las calles. Actualmente también tiene proyectos destinados a la formación de madres y padres de las familias acogidas por la ONG.\n\nLa pagina web es la siguiente: https://www.psncamboya.org', 'Durante el mes de verano si eres mayor de 19 años puedes ir como voluntario (monitor) al Programa de Continuidad Escolar que se realiza para que en el mes de agosto, en el que los niños no tienen clases, no vuelvan a las calles o los vertederos. \n\nAdemás de cómo monitor de tiempo libre, se puede ir como dentista o médico, ya que existen proyectos destinados a la salud. \n\nTambién se puede participar en España dentro de distintos equipos con la finalidad de recaudar fondos y dar a conocer PSE.', 'Instagram: @pse_espana Twitter: @PSNCamboya Facebook: pse.porlasonrisadeunnino', 'sensibilizacion@psncamboya.org', 'por-la-sorisa-nino.png\n', '0000-00-00 00:00:00'),
(55, 'Cruz Roja Española', 'La Cruz Roja Española es una institución humanitaria, de carácter voluntario y de interés público. Trabajamos en las áreas de conocimiento de socorros, intervención social, empleo, salud, educación, medio ambiente y en el ámbito internacional. Trabajamos cada día para estar más cerca de las personas.', 'Hay una gran variedad de proyectos disponibles desde actividades con infancia en diferentes contextos, realizando entrevistas personales para acoger y valorar las necesidades de las personas que solicitan ayuda a Cruz Roja, ayuda y seguimiento en itinerarios hacia el empleo, o realizando talleres de diferentes temáticas (salud, medio ambiente, prevención de conductas violentas etc).', 'Cruz Roja Comunidad De Madrid (Fb, Twitter, Instagram)', 'rebecca.tolosa@cruzroja.es', 'cruz-roja.png\n', '0000-00-00 00:00:00');
INSERT INTO `ongs` (`id_ong`, `nombre_ong`, `descripcion_ong`, `voluntariado_ong`, `rs_ong`, `email_ong`, `logo_ong`, `fecha_inscripcion`) VALUES
(56, 'Fundación Siempre Adelante, ONGD', 'Es una ONGD para el Desarrollo, sin ánimo de lucro, promovida por la Superiora General de las Religiosas Concepcionistas Misioneras de la Enseñanza, inscrita en el Registro de Fundaciones Asistenciales del Ministerio de Trabajo y Asuntos Sociales con el nº 28/1.325, por Orden TAS/3982/2004, de 5 de noviembre (BOE 2 de diciembre de 2004), y provista de CIF: G-84021120.\nLos fines de interés general de la Fundación son:\na) Contribuir a la educación y formación integral de personas, grupos y pueblos de los países en vías de desarrollo y de los núcleos de población que sufren las consecuencias de la pobreza y marginación en el llamado cuarto mundo, como medio que promueva su desarrollo equilibrado e integral, y ayude a avanzar hacia la fraternidad entre los países y personas.\nb) Desarrollar actividades de asistencia social y despertar en las personas la toma de conciencia de la dignidad de todo hombre y la responsabilidad de colaborar en su desarrollo humano y cultural.\nc) Impulsar acciones de voluntariado a nivel nacional y en países en vías de desarrollo, así como organizar y vertebrar su actuación en la Fundación.', 'Proyectos Misioneros Concepcionistas, voluntariado de verano en República Dominicana (Consuelo), Guinea Ecuatorial (Evinayong) y Filipinas (Bacolod), un mes, de primeros de julio a primeros de agosto. Los proyectos se llevan a cabo en un lugar de misión Concepcionista y están tutelados por religiosas de la Congregación que viven en los lugares donde se desarrolla la experiencia misionera. Los voluntarios residen en la casa de las religiosas, y la Congregación se hace cargo de los gastos de alojamiento y manutención. La participación se realiza, ante todo, como un compromiso de fe cristiana, incluyendo otros elementos de importancia como comunicación de experiencias, integración en la cultura del país, formación... Campos de cooperación del voluntario: clases de refuerzo a niños y jóvenes de Primaria y Bachiller, actividades deportivas, trabajos manuales, talleres formativos, juegos, animación de celebraciones religiosas, formación de adultos y de profesorado, visitas y apoyo a familias necesitadas. El proyecto de Bacolod tiene lugar durante el curso escolar, por lo que los voluntarios también se integrarán en las clases regulares.\nPara los voluntarios, hay un encuentro formativo y organizativo. En un fin de semana del mes de abril se tiene el encuentro en Madrid con el grupo de voluntarios que van a participar en los proyectos misioneros que se llevan a cabo en los lugares descritos. se organizan los proyectos, las actividades y distribución de tareas de acuerdo a la realidad del lugar de destino, terminando con la celebración de la Eucaristía del envío misionero. También se tiene formación online, desde que se inicia el proceso de selección hasta la realización del proyecto en sí. Semanas después de regresar del proyecto, tiene lugar un nuevo encuentro de evaluación. \nLos voluntarios derrochan generosidad, trabajan en equipo, lo que viven en estos días lo integran en su vida y se lo cuentan a familiares, amigos, colegios, y apoyan económicamente las actividades de "Siempre Adelante".', 'Facebook, YouTube, Twitter, Instagram', 'comunicaciones.sa@concepcionistas.com', 'siempre-adelante.jpg\n', '0000-00-00 00:00:00'),
(57, 'Asociación Antares', 'Antares se dedica a ofrecer a actividades de ocio y deporte a personas con discapacidad intelectual con el fin de fomentar su inclusión en la sociedad mientras las familias cuidadoras pueden optar a oportunidades de conciliación y respiro familiar.', 'PROGRAMA DE OCIO Y DEPORTE:Nuestro programa de ocio y deporte se lleva a cabo todos los fines de semana del año excepto el mes de agosto. Realizamos una media de cuatro actividades cada sábado y tres los domingos. Todas ellas en entornos comunitarios. Entre estas actividades, por ejemplo, se programan visitas a museos, cine, teatro, restaurantes, discotecas, o se visitan espectáculos deportivos como partidos de fútbol, baloncesto, waterpolo, o se practica algún deporte como natación.\nPROGRAMA DE ESTANCIAS Y RESPIRO FAMILIAR: Dos veces al mes nos vamos de campamento con personas con discapacidad intelectual. Disfrutamos de fines de semana, puentes y dos semanas de vacaciones en agosto. Los destinos son ciudades de todo el país donde aprovechamos para realizar turismo y fomentar la normalización del colectivo.\nPROGRAMA DE CONCILIACIÓN: Se trata de la programación de actividades extraescolares de lunes a jueves de 17:30 a 19:30. Se realiza deporte adaptado, taller de música y piscina. Por otro lado en periodos no lectivos como Navidad y verano, se llevan a cabo campamentos urbanos en los cuales se ofertan actividades de ocio y deporte. \n', 'Twitter e Instagram @AntaresAsoc FAcebook; @asociacionantares', 'psancho@asociacionantares.org', 'antares.jpg\n', '0000-00-00 00:00:00'),
(58, 'ASOCIACIÓN HONTANAR', 'Los Franciscanos TOR fundan en 1.993 Hontanar con la finalidad de prevención de la marginación y la atención a personas con adicciones en proceso de rehabilitación y reinserción.', 'Hontanar desarrolla un programa de atención a personas con adicciones, PISO DE INSERCIÓN SOCIAL, para favorecer el tratamiento ambulatorio de las personas con mayor vulnerabilidad por falta de apoyo familiar o no ser este conveniente.', 'facebook: ASOCIACIÓN HONTANAR y en https://asociacionhontanar.org', 'asociacionhontanar@hotmail.com', 'asoc-hontanar.jpg\n', '0000-00-00 00:00:00'),
(59, 'Fundación La Semilla', 'La Fundación La Semilla es una organización sin ánimo de lucro que hace teatro solidario y dona lo que recauda a los proyectos que selecciona de distintas ONGs y asociaciones, colaborando en la consecución de sus fines sociales, ya sea en España o en el tercer mundo. Todos sus miembros son voluntarios.', 'Se puede colaborar en diversas tareas: actuación en obras de teatro, publicidad, selección de proyectos solidarios, búsqueda de teatros y ONGs, acomodar en teatros, gestión de redes sociales, e-mail y web, luces y sonido, decorados, maquillaje y peluquería, vestuario, diseño de imagen (carteles), contacto con medios de comunicación, participación en ferias, composición y dirección musical, grabación de narraciones, música y coros de canciones, gestión de reservas, coreografía, dirección y guión, etc.\n', 'www.facebook.com/fundacionlasemilla, www.twitter.com/semillateatro, www.instagram.com/semillateatro,', 'lafundacionlasemilla@gmail.com', 'fundacion-la-semilla.jpg\n', '0000-00-00 00:00:00'),
(60, 'REDES (Red de Entidades para el Desarrollo Solidario).', 'REDES en una agrupación de más de 50 entidades de Cooperación Internacional. Somos mayoritariamente ONGD ligadas a instituciones religiosas y otras organizaciones de inspiración cristiana que deseamos trabajar, conjuntamente, para ser más significativos y eficaces en nuestro compromiso a favor de la justicia y la transformación del mundo, desde una dimensión constitutiva del anuncio del Evangelio, es decir, de la misión de la Iglesia.', 'Proyectos de Voluntariado Internacional.', 'www.redes-ongd.org / www.instagram.com/redes_ongd / www.youtube.com/channel/UCc8MUZ6b5725tvA7QspnOvg', 'voluntariado@redes-ongd.org', 'redes.jpg\n', '0000-00-00 00:00:00'),
(61, 'Fundación Desarrollo y Asistencia', 'En Desarrollo y Asistencia llevamos a cabo programas de acompañamiento a personas que se encuentran en situación de necesidad por soledad, enfermedad, exclusión, discapacidad u otras causas.\nComenzamos nuestra actividad en diciembre de 1995. Desde entonces hemos ido creciendo apoyándonos siempre en el deseo de ayudar con nuestro acompañamiento persona a persona y nuestros valores fundamentales como son el reconocimiento de la dignidad de la persona y el respeto a su libertad, el apoyo a la familia y la constancia y el compromiso en el trabajo.', 'Apoyo a Personas Sin Hogar consiste en la realización de tareas de acompañamiento a personas sin hogar para tratar de paliar su soledad y devolverles su autoestima a través de la compañía, el afecto, los pequeños detalles, la conversación y la escucha activa.\nActividades con Personas con Discapacidad salidas de ocio y tiempo libre para personas con discapacidad intelectual que tienen este problema. Son alumnos de Centros de Educación Especial y Ocupacionales, seleccionados por los profesionales de estos centros, como las personas que más lo necesitan, ellos y sus familias.\nPrograma En Línea objetivo el impartir una serie de refuerzos educativos a niños escolarizados de 8 a 12 años con riesgos de exclusión social.\n', 'Facebook:DesarrolloyAsistencia o Web:www.desarrolloyasistencia.org ', 'merchealvarez@desarrolloyasistencia.org', 'desarrollo-y-asistencia.png\n', '0000-00-00 00:00:00'),
(62, 'Cooperating Volunteers', 'Cooperating volunteers es una empresa que organiza experiencia de voluntariado e intercambio cultural.\n\nCooperating volunteers nació para ofrecer un tipo de experiencia diferente; una experiencia auténtica en contacto con la comunidad local y proyectos o instituciones sociales reales (hospitales, centros educativos, etc). \n\nCooperating Volunteers ofrece una experiencia de voluntariado. Participar en los proyectos, asistirlos, alojarse en los alojamientos con nuestros equipos locales, disfrutar y conocer cultura, son unas de las tantas actividades que hacen de ella una experiencia única. \n\nCuando nuestro equipo está en destino, lo más lindo de nuestra experiencia como coordinadores es visualizar el factor empatico que tiene este tipo de experiencia. En destino, el objetivo del voluntario es conocer su cultura, su gente y sentir como ellos. \n\nCooperating Volunteers está conformado por un equipo de profesionales con extensa experiencia en coordinación y gestión de voluntariado. Nos caracterizamos por estar estar las 24 horas los 365 días del año asistiendo a los proyectos, equipo en destino y a los voluntarios. \n\nLos esperamos para vivir más que una experiencia de voluntariado.', 'Los estudiantes tiene la opción de poder participar en más de 30 países. En cada uno de ellos, puede optar por diferentes programas dependiendo del perfil de cada uno de los interesados. Programas de educación, construcción, cuidado de niños, médicos, deportes, conservación de vida salvaje, conservación de vida Silvestre y más, son los diferentes proyectos en los cuales los voluntarios pueden participar.\n\nA nivel general todos los interesados pueden participar siempre y cuando sea mayor de edad (se aceptan voluntarios de 17 años a determinados destinos presentando autorización firmada por los padres o tutor legal) y presenten antecedentes no penales.\n\nLos proyectos como médicos, asistencia clínica en los proyectos con animales y otros, los voluntarios deberán presentar más requisitos según las tareas / responsabilidades que realice el proyecto elegido.\n\nCada año los voluntarios son cada vez más. Esto nos demuestra que más personas optar por una experiencia más responsable y auténtica. Alejándonos de lo convencional.\n\nDesde el 2014 Cooperating Volunteers ha gestionado más de 15.000 voluntarios.\n\nEste verano 2019, han viajado por los diferentes destinos más de 900 voluntarios.\n\nLos destinos más solicitados son Uganda, India, Kenia, Ghana, Tanzania, Nepal, Indonesia, Camboya, Costa Rica y Panama. \n', 'Instagram:cooperatingvolunteers', 'mayra@cooperatingvolunteers.com', '', '0000-00-00 00:00:00'),
(63, 'YouSocial Volunteer', 'YouSocial Volunteer es una plataforma social que te ofrece experiencias de voluntariado únicas en el extranjero, en las que vivirás una gran aventura mientras conectas, aprendes y compartes con una nueva cultura.\nNuestros proyectos, que en línea con los Objetivos de Desarrollo Sostenible, abarcan ámbitos como la Educación de calidad, la Empleabilidad, Salud y Bienestar; generan un impacto positivo en las comunidades menos favorecidas de Nepal, India, Kenia y Filipinas.\nEl equipo de YouSocial, con más de 15 años de experiencia en voluntariado internacional, te proporcionará recursos clave para preparar tu viaje, dar visibilidad a tu proyecto, asesorándote para que tu voluntariado sea una experiencia inspiradora y con impacto tanto a nivel personal como profesional.\nSumérgete en esta nueva aventura con YouSocial Volunteer solicitando tu plaza en www.yousocialvolunteer.com!" \n', 'EMPRENDIMIENTO SOCIAL\nDesarrollo de un sistema de aguas en Filipinas\nDesarrollo de una bebida orgánica en Filipinas\nDesarrollo de una panaderia local en Filipinas\nTaller de cocina y nutrición en India\n\nEDUCACION y SALUD\nEducación de calidad para niños en kenya\nEducación y clases de refuerzo en Nepal\nEducación, Nutrición, salud e higiene en Nepal\nEducación con niños en Filipinas\nClinic de futbol con niños en filipinas \nDesarrollo profesional de jóvenes en India\n\nPERIODISMO Y ARTE\nEmpoderamiento de mujeres a través de la musica en India\nDesarrollo de un canal de noticias en India\nCinematografia y medios digitales en India\n\n', 'Instagram,Facebook, Twitter y Youtube:YOUSOCIALVOLUNTEER', 'yousocialvolunteer@gmail.com', 'you-social.png\n', '0000-00-00 00:00:00'),
(64, 'AMAFE', 'AMAFE, Asociación Madrileña de Amigos y Familiares de Personas con Esquizofrenia y, próximamente, Asociación Española de Apoyo en Psicosis, es una entidad sin ánimo de lucro, de ámbito provincial, inscrita en el Registro Nacional de Asociaciones, declarada de Utilidad Pública desde 1996 y certificada en Calidad según la ISO 9001.\n\nAMAFE, fue constituida en el año 1989 por familiares de personas con enfermedad mental que sintieron la necesidad de dotarse de una Entidad que pudiera dar una respuesta integral y efectiva a las cuestiones relativas a la salud mental de sus seres queridos. Desde esa fecha ha ido incrementando progresivamente su base social con la incorporación de nuevos miembros. En la actualidad, está integrada por más de 600 socios, que a su vez representan a miles de familias con algún miembro afectado de psicosis o esquizofrenia.', 'Programas anuales de voluntariado', 'Facebook;amafe.pagina.oficial oTwitter:Amafesemueve', 'vgonzalez@amafe.org', 'amafe.jpg\n', '0000-00-00 00:00:00'),
(65, 'UNIVERSIDAD POLITECNICA DE MADRID. DIRECCIÓN DE COOPERACION', 'La Dirección de Área para Latinoamérica y Cooperación al Desarrollo desarrolla una serie de acciones que tiene como objetivo comenzar a promover una labor en el ámbito de la Cooperación al Desarrollo fundamentalmente entre los profesores y alumnos de la UPM y a centrar la acción de la UPM en este campo en las misiones y capacidades específicas de la Universidad. La cooperación al desarrollo de la UPM está orientada en la línea que marca la nueva Agenda 2030 de Naciones Unidos con sus Objetivos de Desarrollo Sostenible (ODS), apostando por las siguientes líneas:\n• Una visión global del desarrollo, trabajando en la solución de problemas globales al desarrollo, desde la realidad local donde se ubica la UPM.\n• El acercamiento a los problemas de sostenibilidad, tal como señala la nueva Agenda 2030, englobando los aspectos de pobreza y de inequidad, que se trabajaba desde la cooperación al desarrollo. Esto implica ver la sostenibilidad desde los prismas económico, social y medioambiental.\n• Una apuesta multidisciplinar de la UPM, buscando sinergias entre distintos grupos de investigación y de cooperación que pueden aportar distintas soluciones a los retos de la Agenda.\n• Un punto focal de trabajo en red con otros actores de la cooperación, como son agencias, empresas y ONGD; aprovechando la capacidad de la universidad como dinamizadora.\nLos tipos de acciones enmarcadas en la normativa de la UPM son:\n• Acciones de sensibilización\n• Acciones de apoyo a la actividad voluntaria en cooperación\n• Acciones en el campo de la formación\n• Actividades de asistencia técnica y proyectos de desarrollo, \n• Acciones de investigación\n\n', 'Ayudas de viaje de cooperación para la realización de TFG/TFM o prácticas curriculares. Programa de Voluntariado Internacional de las Universidades Públicas de la Comunidad de Madrid.', '', 'e.lopez@upm.es', 'upm.png\n', '0000-00-00 00:00:00'),
(66, 'Flores de kiskeya', 'Apoyar a las mujeres más vulnerables en Anse-á-pitres, Haití. Nuestro proyecto ha ido evolucionando con el objetivo de que las mujeres consigan mayor autonomía, desarrollo y empoderamiento. Para ello, se llevan a cabo una serie de herramientas y habilidades dirigidas a las mujeres y sus hijos para que sean autosuficientes el día de mañana.', 'En Haití tenemos los campamentos de verano, y el resto del año recibimos voluntarios según las necesidades. Por otro lado, tenemos el voluntariado en España con diferentes departamentos con el objetivo de realizar eventos y demás.', 'Info@floresdekiskeya.org', 'Info@floresdekiskeya.org', 'flores-kiskeya.png\n', '0000-00-00 00:00:00'),
(67, 'El Sordo Fisgón. Turismo Accesible.', 'Consiste en una plataforma en la que se exponen vídeos en forma de reportaje que cuentan la experiencia, en lengua de signos española, de los viajes realizados por el autor. El proyecto se materializa en vídeos publicados en el canal de YouTube: El Sordo Fisgón, y en la página web: www.elsordofisgon.com. También aparece en Facebook. El objetivo es eliminar la multitud de barreras de acceso a la información que encuentran las personas sordas en el ámbito del turismo.\n', '#¿NOMBRE?', 'Web: www.elsordofisgon.com// Canal de Youtube El Sordo Fisgón // Facebook: El Sordo Fisgón', 'contacto@elsordofisgon.com', 'el-sordo-fisgon.jpg\n', '0000-00-00 00:00:00'),
(68, 'Médicos', 'Nueva ONG', '', NULL, NULL, NULL, '2020-08-31 22:17:46'),
(69, 'Voluntas Vincit', 'adf', 'f', NULL, NULL, NULL, '2020-08-31 20:08:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `tipo_proyecto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='proyecto a realizar en el voluntariado';

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `tipo_proyecto`) VALUES
(1, 'Ancianos'),
(2, 'Sin recursos'),
(3, 'Enfermos'),
(4, 'Cooperación Social'),
(5, 'Misión'),
(6, 'Niños'),
(7, 'Discapacitados'),
(8, 'Animales'),
(9, 'Proyecto Científico'),
(10, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntariado_lugar`
--

CREATE TABLE `voluntariado_lugar` (
  `id_ong` int(11) NOT NULL,
  `id_voluntariado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `voluntariado_lugar`
--

INSERT INTO `voluntariado_lugar` (`id_ong`, `id_voluntariado`) VALUES
(1, 1),
(1, 8),
(2, 9),
(3, 2),
(3, 8),
(4, 9),
(4, 1),
(4, 10),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 8),
(5, 8),
(6, 9),
(6, 1),
(6, 4),
(6, 5),
(6, 8),
(7, 2),
(7, 7),
(8, 8),
(9, 9),
(10, 1),
(11, 8),
(12, 9),
(12, 1),
(13, 9),
(14, 9),
(14, 1),
(15, 8),
(16, 7),
(17, 8),
(18, 9),
(19, 9),
(19, 1),
(20, 2),
(20, 4),
(20, 5),
(20, 8),
(21, 9),
(21, 8),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 8),
(23, 9),
(24, 9),
(25, 2),
(26, 2),
(26, 4),
(26, 5),
(26, 8),
(27, 1),
(28, 10),
(29, 9),
(30, 9),
(30, 1),
(31, 4),
(31, 5),
(32, 1),
(32, 10),
(32, 2),
(32, 4),
(32, 5),
(33, 9),
(33, 1),
(34, 7),
(35, 9),
(35, 1),
(36, 9),
(36, 4),
(36, 5),
(37, 1),
(37, 10),
(37, 7),
(38, 9),
(38, 1),
(38, 10),
(38, 2),
(38, 3),
(38, 4),
(38, 5),
(38, 6),
(38, 7),
(39, 9),
(40, 9),
(40, 1),
(40, 10),
(41, 9),
(41, 1),
(42, 9),
(42, 4),
(42, 5),
(43, 9),
(44, 9),
(44, 7),
(45, 7),
(46, 9),
(47, 9),
(47, 7),
(48, 9),
(48, 4),
(48, 5),
(49, 1),
(49, 2),
(49, 4),
(49, 5),
(49, 7),
(50, 9),
(51, 7),
(52, 2),
(53, 2),
(53, 4),
(53, 5),
(53, 7),
(54, 2),
(54, 8),
(55, 9),
(56, 2),
(56, 4),
(56, 5),
(56, 7),
(57, 9),
(58, 9),
(59, 9),
(59, 1),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(60, 7),
(61, 9),
(62, 10),
(62, 2),
(62, 3),
(62, 4),
(62, 5),
(62, 6),
(62, 7),
(63, 2),
(63, 7),
(64, 9),
(65, 2),
(65, 4),
(65, 5),
(65, 7),
(66, 4),
(66, 5),
(67, 1),
(68, 1),
(68, 1),
(68, 1),
(68, 3),
(68, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntariado_proyecto`
--

CREATE TABLE `voluntariado_proyecto` (
  `id_ong` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `voluntariado_proyecto`
--

INSERT INTO `voluntariado_proyecto` (`id_ong`, `id_proyecto`) VALUES
(1, 1),
(1, 10),
(2, 1),
(2, 6),
(2, 7),
(2, 3),
(2, 4),
(2, 2),
(3, 6),
(3, 4),
(3, 2),
(4, 1),
(4, 6),
(4, 7),
(4, 3),
(4, 2),
(4, 5),
(5, 6),
(5, 5),
(6, 6),
(6, 4),
(7, 6),
(7, 3),
(7, 4),
(8, 7),
(9, 6),
(10, 10),
(10, 5),
(11, 6),
(12, 7),
(12, 3),
(13, 10),
(14, 4),
(14, 10),
(15, 10),
(16, 10),
(16, 5),
(17, 6),
(17, 3),
(17, 4),
(17, 2),
(18, 6),
(18, 7),
(19, 10),
(20, 1),
(20, 6),
(20, 7),
(20, 8),
(20, 3),
(20, 4),
(21, 1),
(21, 7),
(21, 3),
(21, 2),
(22, 8),
(22, 10),
(23, 7),
(24, 2),
(25, 1),
(25, 6),
(25, 7),
(25, 3),
(25, 4),
(25, 2),
(26, 1),
(26, 6),
(26, 7),
(26, 8),
(26, 3),
(26, 4),
(26, 2),
(27, 3),
(27, 4),
(27, 2),
(28, 1),
(28, 6),
(28, 7),
(28, 8),
(28, 3),
(28, 4),
(28, 2),
(29, 6),
(29, 7),
(30, 1),
(30, 6),
(30, 7),
(30, 3),
(30, 2),
(31, 6),
(31, 2),
(32, 1),
(32, 6),
(32, 2),
(32, 5),
(33, 2),
(34, 1),
(34, 6),
(34, 3),
(34, 4),
(34, 2),
(34, 5),
(35, 6),
(36, 1),
(36, 3),
(36, 4),
(36, 5),
(37, 1),
(37, 6),
(37, 7),
(37, 2),
(37, 5),
(38, 1),
(38, 6),
(38, 7),
(38, 3),
(38, 2),
(38, 5),
(39, 7),
(40, 6),
(40, 10),
(40, 5),
(41, 10),
(42, 4),
(42, 10),
(43, 1),
(43, 6),
(43, 3),
(43, 2),
(43, 5),
(44, 10),
(45, 6),
(45, 4),
(46, 10),
(47, 1),
(47, 6),
(47, 7),
(47, 3),
(47, 2),
(47, 5),
(48, 6),
(48, 3),
(48, 4),
(48, 2),
(48, 5),
(49, 6),
(49, 4),
(49, 2),
(49, 5),
(50, 6),
(50, 4),
(50, 10),
(51, 6),
(51, 4),
(51, 2),
(52, 6),
(52, 4),
(52, 2),
(52, 5),
(53, 6),
(53, 4),
(54, 6),
(54, 7),
(54, 4),
(54, 2),
(54, 10),
(55, 1),
(55, 6),
(55, 7),
(55, 3),
(55, 4),
(55, 2),
(56, 6),
(56, 4),
(56, 5),
(57, 7),
(58, 10),
(59, 10),
(60, 10),
(61, 1),
(61, 7),
(61, 3),
(62, 1),
(62, 6),
(62, 7),
(62, 8),
(62, 3),
(62, 4),
(62, 2),
(63, 6),
(63, 4),
(63, 2),
(64, 7),
(65, 9),
(66, 10),
(67, 7),
(67, 10),
(68, 10),
(68, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_voluntariado`);

--
-- Indices de la tabla `ongs`
--
ALTER TABLE `ongs`
  ADD PRIMARY KEY (`id_ong`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id_voluntariado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `ongs`
--
ALTER TABLE `ongs`
  MODIFY `id_ong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
