/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sorter.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: victor <victor@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/07 22:12:58 by victor            #+#    #+#             */
/*   Updated: 2022/12/07 22:35:57 by victor           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "sorter.h"

void sorter(char *str)
{
    char	tmp;
    int		i, j;

	i = 0;
    while (str[i])
    {
		j = i+1;
		while (str[j])
		{
        	if (str[i] + '0' > str[j] + '0')
			{
				tmp = str[i];
				str[i] = str[j];
				str[j] = tmp;
			}
			j++;
		}
		i++;
    }
	printf("%s\n", str);
}

// int main(int ac, char **av)
// {
//     int i = 0;

//     while (i < ac)
//     {
//         sorter(av[i]);
//         i++;
//     }
//     return 0;
// // }