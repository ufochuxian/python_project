.class Lorg/jsoup/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x50


# instance fields
.field final synthetic a:Lorg/jsoup/a/a;

.field private c:I

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lorg/jsoup/a/a;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lorg/jsoup/a/a$a;->a:Lorg/jsoup/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/a/a$a;->c:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/a/a;Lorg/jsoup/a/a$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/a/a;
    .param p2, "x1"    # Lorg/jsoup/a/a$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/jsoup/a/a$a;-><init>(Lorg/jsoup/a/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x50

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 78
    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    iput v5, p0, Lorg/jsoup/a/a$a;->c:I

    .line 80
    :cond_0
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, " "

    aput-object v8, v7, v5

    const-string v8, "\n"

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/jsoup/a/a$a;->c:I

    add-int/2addr v6, v7

    if-le v6, v9, :cond_6

    .line 85
    const-string v6, "\\s+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "words":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 87
    aget-object v2, v3, v0

    .line 88
    .local v2, "word":Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_4

    move v1, v4

    .line 89
    .local v1, "last":Z
    :goto_2
    if-nez v1, :cond_3

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/jsoup/a/a$a;->c:I

    add-int/2addr v6, v7

    if-le v6, v9, :cond_5

    .line 92
    iget-object v6, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lorg/jsoup/a/a$a;->c:I

    .line 86
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "last":Z
    :cond_4
    move v1, v5

    .line 88
    goto :goto_2

    .line 95
    .restart local v1    # "last":Z
    :cond_5
    iget-object v6, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v6, p0, Lorg/jsoup/a/a$a;->c:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/jsoup/a/a$a;->c:I

    goto :goto_3

    .line 100
    .end local v0    # "i":I
    .end local v1    # "last":Z
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "words":[Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v4, p0, Lorg/jsoup/a/a$a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/jsoup/a/a$a;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 2
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    instance-of v1, p1, Lorg/jsoup/nodes/i;

    if-eqz v1, :cond_1

    .line 60
    check-cast p1, Lorg/jsoup/nodes/i;

    .end local p1    # "node":Lorg/jsoup/nodes/h;
    invoke-virtual {p1}, Lorg/jsoup/nodes/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/a/a$a;->a(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "node":Lorg/jsoup/nodes/h;
    :cond_1
    const-string v1, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "\n * "

    invoke-direct {p0, v1}, Lorg/jsoup/a/a$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 6
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "\n"

    invoke-direct {p0, v1}, Lorg/jsoup/a/a$a;->a(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v1, v4

    const-string v2, "h1"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "h2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "h3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "h4"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "h5"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "\n\n"

    invoke-direct {p0, v1}, Lorg/jsoup/a/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, " <%s>"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "href"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/a/a$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jsoup/a/a$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
