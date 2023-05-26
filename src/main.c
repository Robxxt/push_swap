/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rdragan <rdragan@student.42heilbronn.de    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/26 16:15:55 by rdragan           #+#    #+#             */
/*   Updated: 2023/05/26 17:24:31 by rdragan          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void reset_color(void)
{
	ft_printf(1, "\e[0;37m");
}

int main(int argc, char *argv[])
{
	ft_printf(1, "This tests that libft was imported fine!: There are %d args for the program %s\n", argc, argv[0]);
	test();
	return 0;
}
