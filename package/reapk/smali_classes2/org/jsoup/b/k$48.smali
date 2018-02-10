.class final enum Lorg/jsoup/b/k$48;
.super Lorg/jsoup/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 3
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 1153
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {p1}, Lorg/jsoup/b/j;->g()V

    .line 1155
    sget-object v1, Lorg/jsoup/b/k$48;->DoctypeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1183
    :goto_0
    :sswitch_0
    return-void

    .line 1158
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1159
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1179
    invoke-virtual {p1}, Lorg/jsoup/b/j;->g()V

    .line 1180
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iget-object v1, v1, Lorg/jsoup/b/h$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    sget-object v1, Lorg/jsoup/b/k$48;->DoctypeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1167
    :sswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1168
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iget-object v1, v1, Lorg/jsoup/b/h$c;->b:Ljava/lang/StringBuilder;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1169
    sget-object v1, Lorg/jsoup/b/k$48;->DoctypeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1172
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1173
    invoke-virtual {p1}, Lorg/jsoup/b/j;->g()V

    .line 1174
    iget-object v1, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jsoup/b/h$c;->e:Z

    .line 1175
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1176
    sget-object v1, Lorg/jsoup/b/k$48;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method
