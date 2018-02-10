.class final enum Lorg/jsoup/b/k$49;
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
    .line 1185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 4
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 1187
    invoke-virtual {p2}, Lorg/jsoup/b/a;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    invoke-virtual {p2}, Lorg/jsoup/b/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iget-object v2, v2, Lorg/jsoup/b/h$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 1192
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/b/a;->d()C

    move-result v0

    .line 1193
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1216
    iget-object v2, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iget-object v2, v2, Lorg/jsoup/b/h$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1195
    :sswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1196
    sget-object v2, Lorg/jsoup/b/k$49;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1203
    :sswitch_1
    sget-object v2, Lorg/jsoup/b/k$49;->AfterDoctypeName:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1206
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 1207
    iget-object v2, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    iget-object v2, v2, Lorg/jsoup/b/h$c;->b:Ljava/lang/StringBuilder;

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1210
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->d(Lorg/jsoup/b/k;)V

    .line 1211
    iget-object v2, p1, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jsoup/b/h$c;->e:Z

    .line 1212
    invoke-virtual {p1}, Lorg/jsoup/b/j;->h()V

    .line 1213
    sget-object v2, Lorg/jsoup/b/k$49;->Data:Lorg/jsoup/b/k;

    invoke-virtual {p1, v2}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 1193
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x3e -> :sswitch_0
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
