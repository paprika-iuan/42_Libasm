##########################################################
######################### Colors #########################
END = \033[m
RED = \033[31m
GREEN = \033[32m
YELLOW = \033[33m
BLUE = \033[34m
LIGTH = \033[1m
DARK = \033[2m
ITALIC = \033[3m

SUCCESS = $(LIGTH)$(GREEN)[SUCCESS]$(END)
WARNING = $(LIGTH)$(YELLOW)[WARNING]$(END)
INFO = $(LIGTH)$(BLUE)[INFO]$(END)
ERROR = $(LIGTH)$(RED)[ERROR]$(END)

##########################################################
##################### Build Variables ####################

NAME := libasm.a
NAME_TEST := lib_test
RMV = rm -rf

SRC_DIR := src/
OBJ_DIR = obj/
DEP_DIR := dep/
TEST_DIR := test/
TEST_OBJ_DIR := $(TEST_DIR)obj/

FILES = /
	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

SOURCES = $(addprefix $(SRC_DIR), $(FILES))

OBJ	= $(SRC_DIR:%.s=$(OBJ_DIR)/%.o)
DEP	= $(SRC_DIR:%.s=$(DEP_DIR)/%.d)

AS := nasm -f elf64 -w+all -w+error -w+orphan-labels -g
FLAGS_ASM := -MD -MF
LIB_ASM := ar rcs

DIRS_TO_CREATE = $(OBJ_DIR) $(DEP_DIR)

##########################################################
##################### Default Target #####################

all: dir $(OBJ) $(NAME)

##########################################################
################### Directory creation ###################

dir:
	for DIR in $(DIRS_TO_CREATE); do \
		if [ ! -d $$DIR]; then \
			mkdir -p $$DIR; \
			printf "$(BLUE)$(LIGHT)Creating diectory:$(END) $$DIR\n" \
		else \
			printf "$(BLUE)$(LIGHT) Directory already exists:$(END) $$DIR\n"\
		fi \
	done


$(NAME): $(OBJ)
	$(AS) -felf64 $(OBJ) -o $(NAME)

##########################################################
##################### Cleanup Targets ####################

clean:
	for DIR in $(DIRS_TO_CREATE); do \
		if [ ! -d $$DIR]; then \
			$(RMV) $$DIR; \
			printf "$(SUCCESS)Removed diectory: $$DIR\n" \
		else \
			printf "$(WARNING)Directory not found: $$DIR\n"\
		fi \
	done

	printf "$(SUCCESS)Object and dependecy files cleaned.\n"

fclean: clean
	if [ -f $(NAME)]; then \
		$(RMV) $(NAME); \
		printf "$(SUCCESS)Removed library: $(NAME)\n" \
	else
		printf "$(WARNING) Library not found: $(NAME)\n"\
	fi \

re: fclean all

.PHONY: all clean fclean re