.class public La/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, La/c$a;->d:I

    .line 12
    const/16 v0, 0xa

    iput v0, p0, La/c$a;->e:I

    .line 14
    const/high16 v0, 0x800000

    iput v0, p0, La/c$a;->f:I

    .line 15
    iput-boolean v1, p0, La/c$a;->g:Z

    .line 17
    const/4 v0, 0x3

    iput v0, p0, La/c$a;->h:I

    .line 18
    iput v1, p0, La/c$a;->i:I

    .line 19
    iput v2, p0, La/c$a;->j:I

    .line 21
    const/16 v0, 0x80

    iput v0, p0, La/c$a;->k:I

    .line 22
    iput-boolean v1, p0, La/c$a;->l:Z

    .line 24
    iput-boolean v1, p0, La/c$a;->m:Z

    .line 26
    iput v2, p0, La/c$a;->n:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, La/c$a;->o:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 34
    const-string v3, "d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int v1, v2, v1

    iput v1, p0, La/c$a;->f:I

    .line 37
    iput-boolean v2, p0, La/c$a;->g:Z

    :goto_0
    move v1, v2

    .line 68
    :cond_0
    return v1

    .line 39
    :cond_1
    const-string v3, "fb"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/c$a;->k:I

    .line 42
    iput-boolean v2, p0, La/c$a;->l:Z

    goto :goto_0

    .line 44
    :cond_2
    const-string v3, "a"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/c$a;->n:I

    goto :goto_0

    .line 46
    :cond_3
    const-string v3, "lc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/c$a;->h:I

    goto :goto_0

    .line 48
    :cond_4
    const-string v3, "lp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/c$a;->i:I

    goto :goto_0

    .line 50
    :cond_5
    const-string v3, "pb"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/c$a;->j:I

    goto :goto_0

    .line 52
    :cond_6
    const-string v3, "eos"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 53
    iput-boolean v2, p0, La/c$a;->m:Z

    goto :goto_0

    .line 54
    :cond_7
    const-string v3, "mf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "mfs":Ljava/lang/String;
    const-string v3, "bt2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 58
    iput v1, p0, La/c$a;->o:I

    goto/16 :goto_0

    .line 59
    :cond_8
    const-string v3, "bt4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 60
    iput v2, p0, La/c$a;->o:I

    goto/16 :goto_0

    .line 61
    :cond_9
    const-string v3, "bt4b"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iput v4, p0, La/c$a;->o:I

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/String;)Z
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "pos":I
    const/4 v5, 0x1

    .line 75
    .local v5, "switchMode":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_b

    .line 77
    aget-object v3, p1, v1

    .line 78
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 140
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 80
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_4

    .line 82
    const-string v8, "--"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 84
    const/4 v5, 0x0

    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_4

    .line 89
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "sw":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {p0, v4}, La/c$a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "sw":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_8

    .line 106
    const-string v8, "e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 107
    iput v6, p0, La/c$a;->d:I

    .line 137
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto :goto_2

    .line 108
    :cond_6
    const-string v8, "d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 109
    iput v7, p0, La/c$a;->d:I

    goto :goto_3

    .line 110
    :cond_7
    const-string v8, "b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    iput v10, p0, La/c$a;->d:I

    goto :goto_3

    .line 115
    :cond_8
    if-ne v2, v7, :cond_a

    .line 117
    iget v8, p0, La/c$a;->d:I

    if-ne v8, v10, :cond_9

    .line 121
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, La/c$a;->e:I

    .line 122
    iget v8, p0, La/c$a;->e:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v8, v7, :cond_5

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    iput-object v3, p0, La/c$a;->p:Ljava/lang/String;

    goto :goto_3

    .line 133
    :cond_a
    if-ne v2, v10, :cond_0

    .line 134
    iput-object v3, p0, La/c$a;->q:Ljava/lang/String;

    goto :goto_3

    .end local v3    # "s":Ljava/lang/String;
    :cond_b
    move v6, v7

    .line 140
    goto :goto_1
.end method
