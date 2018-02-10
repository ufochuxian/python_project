.class Lorg/jsoup/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:C = '\ufffd'


# instance fields
.field b:Ljava/lang/StringBuilder;

.field c:Lorg/jsoup/b/h$g;

.field d:Lorg/jsoup/b/h$c;

.field e:Lorg/jsoup/b/h$b;

.field private f:Lorg/jsoup/b/a;

.field private g:Lorg/jsoup/b/e;

.field private h:Lorg/jsoup/b/k;

.field private i:Lorg/jsoup/b/h;

.field private j:Z

.field private k:Ljava/lang/StringBuilder;

.field private l:Lorg/jsoup/b/h$f;

.field private m:Z


# direct methods
.method constructor <init>(Lorg/jsoup/b/a;Lorg/jsoup/b/e;)V
    .locals 1
    .param p1, "reader"    # Lorg/jsoup/b/a;
    .param p2, "errors"    # Lorg/jsoup/b/e;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lorg/jsoup/b/k;->Data:Lorg/jsoup/b/k;

    iput-object v0, p0, Lorg/jsoup/b/j;->h:Lorg/jsoup/b/k;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/b/j;->j:Z

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/b/j;->m:Z

    .line 31
    iput-object p1, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    .line 32
    iput-object p2, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    invoke-virtual {v0}, Lorg/jsoup/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    new-instance v1, Lorg/jsoup/b/d;

    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->a()I

    move-result v2

    const-string v3, "Invalid character reference: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/b/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/b/e;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    invoke-virtual {v0}, Lorg/jsoup/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    new-instance v1, Lorg/jsoup/b/d;

    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->a()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/jsoup/b/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/b/e;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method a(Z)Lorg/jsoup/b/h$g;
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    new-instance v0, Lorg/jsoup/b/h$f;

    invoke-direct {v0}, Lorg/jsoup/b/h$f;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    .line 163
    iget-object v0, p0, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Lorg/jsoup/b/h$e;

    invoke-direct {v0}, Lorg/jsoup/b/h$e;-><init>()V

    goto :goto_0
.end method

.method a()Lorg/jsoup/b/h;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-boolean v1, p0, Lorg/jsoup/b/j;->m:Z

    if-nez v1, :cond_0

    .line 37
    const-string v1, "Self closing flag not acknowledged"

    invoke-direct {p0, v1}, Lorg/jsoup/b/j;->c(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/b/j;->m:Z

    .line 41
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/jsoup/b/j;->j:Z

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lorg/jsoup/b/j;->h:Lorg/jsoup/b/k;

    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v1, p0, v2}, Lorg/jsoup/b/k;->a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    iget-object v1, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Lorg/jsoup/b/h$a;

    invoke-direct {v1, v0}, Lorg/jsoup/b/h$a;-><init>(Ljava/lang/String;)V

    .line 51
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 50
    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/b/j;->j:Z

    .line 51
    iget-object v1, p0, Lorg/jsoup/b/j;->i:Lorg/jsoup/b/h;

    goto :goto_1
.end method

.method a(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method

.method a(Lorg/jsoup/b/h;)V
    .locals 4
    .param p1, "token"    # Lorg/jsoup/b/h;

    .prologue
    .line 56
    iget-boolean v2, p0, Lorg/jsoup/b/j;->j:Z

    const-string v3, "There is an unread token pending!"

    invoke-static {v2, v3}, Lorg/jsoup/helper/d;->b(ZLjava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/jsoup/b/j;->i:Lorg/jsoup/b/h;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jsoup/b/j;->j:Z

    .line 61
    iget-object v2, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v3, Lorg/jsoup/b/h$h;->StartTag:Lorg/jsoup/b/h$h;

    if-ne v2, v3, :cond_1

    move-object v1, p1

    .line 62
    check-cast v1, Lorg/jsoup/b/h$f;

    .line 63
    .local v1, "startTag":Lorg/jsoup/b/h$f;
    iput-object v1, p0, Lorg/jsoup/b/j;->l:Lorg/jsoup/b/h$f;

    .line 64
    iget-boolean v2, v1, Lorg/jsoup/b/h$f;->c:Z

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jsoup/b/j;->m:Z

    .line 71
    .end local v1    # "startTag":Lorg/jsoup/b/h$f;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    sget-object v3, Lorg/jsoup/b/h$h;->EndTag:Lorg/jsoup/b/h$h;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lorg/jsoup/b/h$e;

    .line 68
    .local v0, "endTag":Lorg/jsoup/b/h$e;
    iget-object v2, v0, Lorg/jsoup/b/h$e;->d:Lorg/jsoup/nodes/b;

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "Attributes incorrectly present on end tag"

    invoke-direct {p0, v2}, Lorg/jsoup/b/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lorg/jsoup/b/k;)V
    .locals 0
    .param p1, "state"    # Lorg/jsoup/b/k;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/jsoup/b/j;->h:Lorg/jsoup/b/k;

    .line 93
    return-void
.end method

.method a([C)V
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jsoup/b/j;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method a(Ljava/lang/Character;Z)[C
    .locals 12
    .param p1, "additionalAllowedCharacter"    # Ljava/lang/Character;
    .param p2, "inAttribute"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 105
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->b()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v7

    .line 107
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v10

    iget-object v11, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v11}, Lorg/jsoup/b/a;->c()C

    move-result v11

    if-eq v10, v11, :cond_0

    .line 109
    :cond_2
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const/4 v11, 0x7

    new-array v11, v11, [C

    fill-array-data v11, :array_0

    invoke-virtual {v10, v11}, Lorg/jsoup/b/a;->b([C)Z

    move-result v10

    if-nez v10, :cond_0

    .line 112
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->g()V

    .line 113
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const-string v11, "#"

    invoke-virtual {v10, v11}, Lorg/jsoup/b/a;->d(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 114
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const-string v11, "X"

    invoke-virtual {v10, v11}, Lorg/jsoup/b/a;->e(Ljava/lang/String;)Z

    move-result v3

    .line 115
    .local v3, "isHexMode":Z
    if-eqz v3, :cond_3

    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->m()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "numRef":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 117
    const-string v8, "numeric reference with no numerals"

    invoke-direct {p0, v8}, Lorg/jsoup/b/j;->b(Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v8}, Lorg/jsoup/b/a;->h()V

    goto :goto_0

    .line 115
    .end local v6    # "numRef":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->n()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 121
    .restart local v6    # "numRef":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const-string v10, ";"

    invoke-virtual {v7, v10}, Lorg/jsoup/b/a;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 122
    const-string v7, "missing semicolon"

    invoke-direct {p0, v7}, Lorg/jsoup/b/j;->b(Ljava/lang/String;)V

    .line 123
    :cond_5
    const/4 v1, -0x1

    .line 125
    .local v1, "charval":I
    if-eqz v3, :cond_8

    const/16 v0, 0x10

    .line 126
    .local v0, "base":I
    :goto_2
    :try_start_0
    invoke-static {v6, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_3
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    const v7, 0xd800

    if-lt v1, v7, :cond_6

    const v7, 0xdfff

    if-le v1, v7, :cond_7

    :cond_6
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 130
    :cond_7
    const-string v7, "character outside of valid range"

    invoke-direct {p0, v7}, Lorg/jsoup/b/j;->b(Ljava/lang/String;)V

    .line 131
    new-array v7, v9, [C

    const v9, 0xfffd

    aput-char v9, v7, v8

    goto/16 :goto_0

    .line 125
    .end local v0    # "base":I
    :cond_8
    const/16 v0, 0xa

    goto :goto_2

    .line 135
    .restart local v0    # "base":I
    :cond_9
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    goto/16 :goto_0

    .line 139
    .end local v0    # "base":I
    .end local v1    # "charval":I
    .end local v3    # "isHexMode":Z
    .end local v6    # "numRef":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->l()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "nameRef":Ljava/lang/String;
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Lorg/jsoup/b/a;->c(C)Z

    move-result v4

    .line 142
    .local v4, "looksLegit":Z
    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v4, :cond_c

    :cond_b
    move v2, v9

    .line 144
    .local v2, "found":Z
    :goto_4
    if-nez v2, :cond_d

    .line 145
    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->h()V

    .line 146
    if-eqz v4, :cond_0

    .line 147
    const-string v10, "invalid named referenece \'%s\'"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jsoup/b/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "found":Z
    :cond_c
    move v2, v8

    .line 142
    goto :goto_4

    .line 150
    .restart local v2    # "found":Z
    :cond_d
    if-eqz p2, :cond_f

    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->o()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v10}, Lorg/jsoup/b/a;->p()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const/4 v11, 0x3

    new-array v11, v11, [C

    fill-array-data v11, :array_1

    invoke-virtual {v10, v11}, Lorg/jsoup/b/a;->b([C)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 152
    :cond_e
    iget-object v8, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v8}, Lorg/jsoup/b/a;->h()V

    goto/16 :goto_0

    .line 155
    :cond_f
    iget-object v7, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    const-string v10, ";"

    invoke-virtual {v7, v10}, Lorg/jsoup/b/a;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 156
    const-string v7, "missing semicolon"

    invoke-direct {p0, v7}, Lorg/jsoup/b/j;->b(Ljava/lang/String;)V

    .line 157
    :cond_10
    new-array v7, v9, [C

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    aput-char v9, v7, v8

    goto/16 :goto_0

    .line 127
    .end local v2    # "found":Z
    .end local v4    # "looksLegit":Z
    .end local v5    # "nameRef":Ljava/lang/String;
    .restart local v0    # "base":I
    .restart local v1    # "charval":I
    .restart local v3    # "isHexMode":Z
    .restart local v6    # "numRef":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 109
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 150
    nop

    :array_1
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method b(Z)Ljava/lang/String;
    .locals 4
    .param p1, "inAttribute"    # Z

    .prologue
    const/16 v3, 0x26

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 236
    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2, v3}, Lorg/jsoup/b/a;->b(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2, v3}, Lorg/jsoup/b/a;->c(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->d()C

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/jsoup/b/j;->a(Ljava/lang/Character;Z)[C

    move-result-object v1

    .line 240
    .local v1, "c":[C
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 241
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    .end local v1    # "c":[C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method b()Lorg/jsoup/b/k;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jsoup/b/j;->h:Lorg/jsoup/b/k;

    return-object v0
.end method

.method b(Lorg/jsoup/b/k;)V
    .locals 1
    .param p1, "state"    # Lorg/jsoup/b/k;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v0}, Lorg/jsoup/b/a;->f()V

    .line 97
    iput-object p1, p0, Lorg/jsoup/b/j;->h:Lorg/jsoup/b/k;

    .line 98
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/b/j;->m:Z

    .line 102
    return-void
.end method

.method c(Lorg/jsoup/b/k;)V
    .locals 7
    .param p1, "state"    # Lorg/jsoup/b/k;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    invoke-virtual {v0}, Lorg/jsoup/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    new-instance v1, Lorg/jsoup/b/d;

    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->a()I

    move-result v2

    const-string v3, "Unexpected character \'%s\' in input state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v6}, Lorg/jsoup/b/a;->c()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/b/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/b/e;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {v0}, Lorg/jsoup/b/h$g;->n()V

    .line 168
    iget-object v0, p0, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    invoke-virtual {p0, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    .line 169
    return-void
.end method

.method d(Lorg/jsoup/b/k;)V
    .locals 6
    .param p1, "state"    # Lorg/jsoup/b/k;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    invoke-virtual {v0}, Lorg/jsoup/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/jsoup/b/j;->g:Lorg/jsoup/b/e;

    new-instance v1, Lorg/jsoup/b/d;

    iget-object v2, p0, Lorg/jsoup/b/j;->f:Lorg/jsoup/b/a;

    invoke-virtual {v2}, Lorg/jsoup/b/a;->a()I

    move-result v2

    const-string v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/b/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/b/e;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/jsoup/b/h$b;

    invoke-direct {v0}, Lorg/jsoup/b/h$b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/j;->e:Lorg/jsoup/b/h$b;

    .line 173
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jsoup/b/j;->e:Lorg/jsoup/b/h$b;

    invoke-virtual {p0, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    .line 177
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lorg/jsoup/b/h$c;

    invoke-direct {v0}, Lorg/jsoup/b/h$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    .line 181
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jsoup/b/j;->d:Lorg/jsoup/b/h$c;

    invoke-virtual {p0, v0}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    .line 185
    return-void
.end method

.method i()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/j;->b:Ljava/lang/StringBuilder;

    .line 189
    return-void
.end method

.method j()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jsoup/b/j;->l:Lorg/jsoup/b/h$f;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/b/j;->c:Lorg/jsoup/b/h$g;

    iget-object v0, v0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/b/j;->l:Lorg/jsoup/b/h$f;

    iget-object v1, v1, Lorg/jsoup/b/h$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jsoup/b/j;->l:Lorg/jsoup/b/h$f;

    iget-object v0, v0, Lorg/jsoup/b/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method
