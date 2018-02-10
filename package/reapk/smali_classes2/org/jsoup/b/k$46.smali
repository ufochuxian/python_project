.class final enum Lorg/jsoup/b/k$46;
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
    .line 1099
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
    .line 1101
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1102
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1122
    iget-object v1, p1, Lorg/jsoup/b/j;->e:Lorg/jsoup/b/h$b;

    iget-object v1, v1, Lorg/jsoup/b/h$b;->b:Ljava/lang/StringBuilder;

    const-string v2, "--!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    sget-object v1, Lorg/jsoup/b/k$46;->Comment:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 1125
    :goto_0
    return-void

    .line 1104
    :sswitch_0
    iget-object v1, p1, Lorg/jsoup/b/j;->e:Lorg/jsoup/b/h$b;

    iget-object v1, v1, Lorg/jsoup/b/h$b;->b:Ljava/lang/StringBuilder;

    const-string v2, "--!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    sget-object v1, Lorg/jsoup/b/k$46;->CommentEndDash:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1108
    :sswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/j;->f()V

    .line 1109
    sget-object v1, Lorg/jsoup/b/k$46;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1112
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1113
    iget-object v1, p1, Lorg/jsoup/b/j;->e:Lorg/jsoup/b/h$b;

    iget-object v1, v1, Lorg/jsoup/b/h$b;->b:Ljava/lang/StringBuilder;

    const-string v2, "--!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    sget-object v1, Lorg/jsoup/b/k$46;->Comment:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1117
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1118
    invoke-virtual {p1}, Lorg/jsoup/b/j;->f()V

    .line 1119
    sget-object v1, Lorg/jsoup/b/k$46;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3e -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
