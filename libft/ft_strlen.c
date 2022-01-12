#include "ft_printf.h"

int	ft_strlen(const char *s)
{
	int	res;

	res = 0;
	while (*s++)
		res++;
	return (res);
}
