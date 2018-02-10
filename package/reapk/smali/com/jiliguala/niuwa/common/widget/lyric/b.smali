.class public Lcom/jiliguala/niuwa/common/widget/lyric/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "timeStr"    # Ljava/lang/String;
    .param p2, "time"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->b:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    .line 42
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "lrcLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 53
    const-string v8, "["

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 78
    :cond_0
    return-object v3

    .line 57
    :cond_1
    const-string v8, "]"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "lastIndexOfRightBracket":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "content":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "["

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "times":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "timesArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v6, v7

    .line 67
    .local v4, "tem":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 72
    :cond_2
    :try_start_0
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v4, v9, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    .local v2, "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    .end local v2    # "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p0, "lrcLine"    # Ljava/lang/String;
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    const-string v8, "["

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 84
    const-string v8, "]"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "lastIndexOfRightBracket":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "content":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "["

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "times":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "timesArray":[Ljava/lang/String;
    if-eqz v6, :cond_1

    array-length v8, v6

    if-eqz v8, :cond_1

    .line 93
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v6, v7

    .line 94
    .local v4, "tem":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    :cond_0
    :try_start_0
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v4, v9, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .local v2, "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 101
    .end local v2    # "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 106
    .end local v4    # "tem":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    const-string v7, ""

    invoke-direct {v2, v7, p1, v0}, Lcom/jiliguala/niuwa/common/widget/lyric/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .restart local v2    # "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "lastIndexOfRightBracket":I
    .end local v2    # "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    .end local v5    # "times":Ljava/lang/String;
    .end local v6    # "timesArray":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v3

    .line 111
    :cond_3
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    const-string v7, ""

    invoke-direct {v2, v7, p1, p0}, Lcom/jiliguala/niuwa/common/widget/lyric/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .restart local v2    # "lrcRow":Lcom/jiliguala/niuwa/common/widget/lyric/b;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;)I
    .locals 3
    .param p0, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v1, 0x2e

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "times":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/widget/lyric/b;)I
    .locals 2
    .param p1, "anotherLrcRow"    # Lcom/jiliguala/niuwa/common/widget/lyric/b;

    .prologue
    .line 164
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    iget v1, p1, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->e:I

    .line 136
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    .line 152
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->b:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a(Lcom/jiliguala/niuwa/common/widget/lyric/b;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LrcRow [timeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/lyric/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
