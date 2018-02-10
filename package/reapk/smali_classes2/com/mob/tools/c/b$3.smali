.class final Lcom/mob/tools/c/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/tools/c/b$3;->b:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-static {}, Lcom/mob/tools/c/b;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/c/b$a;

    .line 101
    .local v0, "t":Lcom/mob/tools/c/b$a;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->a(Ljava/lang/Object;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "tt":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v1    # "tt":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->b(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->c(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->d(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_5
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->e(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_6
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->f(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 108
    :pswitch_7
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->g(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 109
    :pswitch_8
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->h(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 110
    :pswitch_9
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->i(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :pswitch_a
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->j(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :pswitch_b
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->k(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_c
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->l(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :pswitch_d
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->m(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :pswitch_e
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->n(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :pswitch_f
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->o(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 117
    :pswitch_10
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->p(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :pswitch_11
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->q(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_12
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->r(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 120
    :pswitch_13
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->s(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 121
    :pswitch_14
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->t(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 122
    :pswitch_15
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->u(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 123
    :pswitch_16
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->v(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 124
    :pswitch_17
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->w(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 125
    :pswitch_18
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->x(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 126
    :pswitch_19
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->y(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 127
    :pswitch_1a
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->z(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 128
    :pswitch_1b
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->A(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 129
    :pswitch_1c
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->B(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 130
    :pswitch_1d
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->C(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 131
    :pswitch_1e
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->D(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 132
    :pswitch_1f
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->E(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 133
    :pswitch_20
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->F(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 134
    :pswitch_21
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->G(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 135
    :pswitch_22
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->H(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 136
    :pswitch_23
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->I(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 137
    :pswitch_24
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->J(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 138
    :pswitch_25
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->K(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 139
    :pswitch_26
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->L(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 140
    :pswitch_27
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->M(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 141
    :pswitch_28
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->N(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 142
    :pswitch_29
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->O(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 143
    :pswitch_2a
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->P(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 144
    :pswitch_2b
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->Q(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 145
    :pswitch_2c
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->R(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 146
    :pswitch_2d
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->S(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 147
    :pswitch_2e
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->T(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 148
    :pswitch_2f
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->U(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 149
    :pswitch_30
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->V(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 150
    :pswitch_31
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->W(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 151
    :pswitch_32
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->X(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 152
    :pswitch_33
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->Y(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 153
    :pswitch_34
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->Z(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 154
    :pswitch_35
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->aa(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 155
    :pswitch_36
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->ab(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 156
    :pswitch_37
    iget-object v3, p0, Lcom/mob/tools/c/b$3;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Lcom/mob/tools/c/b$a;->ac(Ljava/lang/Object;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 163
    .end local v0    # "t":Lcom/mob/tools/c/b$a;
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/c/b$3;->b:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mob/tools/c/b$3;->b:Landroid/os/Handler$Callback;

    invoke-interface {v2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method
