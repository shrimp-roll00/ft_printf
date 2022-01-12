#include "ft_printf.h"

void	*ft_memset(void *b, int c, size_t len)
{
	unsigned char	*ch;

	ch = b;
	while (len--)
		*ch++ = c;
	return (b);
}
