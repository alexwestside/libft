/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: orizhiy <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/25 12:41:17 by orizhiy           #+#    #+#             */
/*   Updated: 2017/02/20 18:17:54 by orizhiy          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

#include "libft.h"

int		ft_atoi(const char *str)
{
	int	si;
	int	res;

	res = 0;
	si = 1;
	if (!(*str))
		return (0);
	while (ft_isspace(*str))
		str++;
	if (*str == '-' || *str == '+')
	{
		si = (*str == '-' ? -1 : 1);
		str++;
	}
	while (ft_isdigit(*str))
	{
		res = res * 10 + *str - '0';
		str++;
	}
	return (res * si);
}

int main(int ac, char **av)
{
	(void) ac;
	printf("%d", ft_atoi(av[1]));
}
