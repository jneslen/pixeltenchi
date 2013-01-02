<?php

class Kacela extends Kohana_Kacela
{

	/**
	 * @param  string $class
	 * @return bool|string
	 */
	public function autoload($class)
	{
		$parts = explode("\\", $class);
		$self = self::instance();

		if (isset($self->_namespaces[$parts[0]]))
		{
			if (class_exists($class))
			{
				return $class;
			}
			elseif ($parts[0] == 'Gacela')
			{
				return parent::autoload($class);
			}
			else
			{

				$path = $parts;
				unset($path[0]);

				$path = join(DIRECTORY_SEPARATOR, $path);

				$file = $self->_namespaces[$parts[0]].$path.'.php';

				if ($self->_findFile($file))
				{
					require $file;
					return $class;
				}
			}
		}
		else
		{
			$namespaces = array_reverse($self->_namespaces);

			foreach ($namespaces as $ns => $path)
			{
				if ($ns == 'Gacela')
				{
					return parent::autoload($class);
				}

				if (substr($class, 0, 1) == '\\')
				{
					$tmp = substr($class, 1);
				}
				else
				{
					$tmp = $class;
				}

				$file = $path.str_replace("\\", DIRECTORY_SEPARATOR, $tmp).'.php';

				if ($self->_findFile($file))
				{
					$class = $ns . $class;

					if (class_exists($class))
					{
						return $class;
					}
					else
					{
						require $file;
						return $class;
					}
				}
			}
		}

		return false;
	}

	public static function find_active($mapper, Gacela\Criteria $criteria = null)
	{
		return self::load($mapper)->find_active($criteria);
	}

	public static function find_disabled($mapper, Gacela\Criteria $criteria = null)
	{
		return self::load($mapper)->find_disabled($criteria);
	}

	public static function find_one($mapper, Gacela\Criteria $criteria = null)
	{
		return self::load($mapper)->find_one($criteria);
	}
}