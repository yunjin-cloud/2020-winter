#include <stdio.h>
#include <stdlib.h>

#define MAX_QUEUE_SIZE 10

typedef int element;
typedef struct
{
	int front;
	int rear;
	element data[MAX_QUEUE_SIZE];
} Queue_Type;

// 오류 나는 경우의 함수
void error(char *message)
{
	fprintf(stderr, "%s \n", message);
	exit(1);
}

// 처음 큐 지정
void init_queue(Queue_Type *q)
{
	q->rear = -1;
	q->front = -1;
}

// 큐 출력
void queue_print(Queue_Type *q)
{
	for (int i = 0; i < MAX_QUEUE_SIZE; i++)
	{
		if (i <= q->front || i > q->rear)
		{
			printf(" | ");
		}
		else
			printf("%d | ", q->data[i]);
	}
	printf("\n");
}

int is_full(Queue_Type *q)
{
	if (q->rear == MAX_QUEUE_SIZE - 1)
		return 1;
	else
		return 0;
}

int is_empty(Queue_Type *q)
{
	if (q->front == q->rear)
		return 1;
	else
		return 0;
}

void enqueue(Queue_Type *q, int item)
{
	if (is_full(q))
	{
		error("큐가 다 찼음.\n");
		return;
	}
	q->data[++(q->rear)] = item;
}

int dequeue(Queue_Type *q)
{
	if (is_empty(q))
	{
		error("큐가 텅 빔.\n");
		return -1;
	}
	int item = q->data[++(q->front)];
	return item;
}

int main(void)
{
	int item = 0;
	Queue_Type q;

	init_queue(&q);

	enqueue(&q, 10); queue_print(&q);
	enqueue(&q, 20); queue_print(&q);
	enqueue(&q, 30); queue_print(&q);

	item = dequeue(&q); queue_print(&q);
	item = dequeue(&q); queue_print(&q);
	item = dequeue(&q); queue_print(&q);

	return 0;
}