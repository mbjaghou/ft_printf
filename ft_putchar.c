/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbjaghou <mbjaghou@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/05 17:09:15 by mbjaghou          #+#    #+#             */
/*   Updated: 2021/12/05 17:09:17 by mbjaghou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_putchar(char c, int *cp)
{
	write(1, &c, 1);
	*cp = *cp + 1;
}
