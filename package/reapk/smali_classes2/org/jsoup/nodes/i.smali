.class public Lorg/jsoup/nodes/i;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "text"


# instance fields
.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/jsoup/nodes/h;-><init>()V

    .line 27
    iput-object p2, p0, Lorg/jsoup/nodes/i;->d:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lorg/jsoup/nodes/i;->f:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/i;

    invoke-direct {v1, v0, p1}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    return-object p0
.end method

.method static b(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    .line 136
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    const-string v1, "text"

    iget-object v2, p0, Lorg/jsoup/nodes/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 143
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 161
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->I(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public J(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 167
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->J(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 173
    invoke-super {p0, p1}, Lorg/jsoup/nodes/h;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Lorg/jsoup/nodes/b;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 149
    invoke-super {p0}, Lorg/jsoup/nodes/h;->N()Lorg/jsoup/nodes/b;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "#text"

    return-object v0
.end method

.method public a(I)Lorg/jsoup/nodes/i;
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    if-ltz p1, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "Split offset must be not be negative"

    invoke-static {v3, v6}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 80
    iget-object v3, p0, Lorg/jsoup/nodes/i;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "Split offset must not be greater than current text length"

    invoke-static {v3, v6}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "head":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tail":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/i;->a(Ljava/lang/String;)Lorg/jsoup/nodes/i;

    .line 85
    new-instance v2, Lorg/jsoup/nodes/i;

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v2, "tailNode":Lorg/jsoup/nodes/i;
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->M()Lorg/jsoup/nodes/h;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->M()Lorg/jsoup/nodes/h;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->aa()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v4, v4, [Lorg/jsoup/nodes/h;

    aput-object v2, v4, v5

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/h;)V

    .line 89
    :cond_0
    return-object v2

    .end local v0    # "head":Ljava/lang/String;
    .end local v1    # "tail":Ljava/lang/String;
    .end local v2    # "tailNode":Lorg/jsoup/nodes/i;
    :cond_1
    move v3, v5

    .line 79
    goto :goto_0

    :cond_2
    move v3, v5

    .line 80
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lorg/jsoup/nodes/i;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/jsoup/nodes/i;->f:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-object p0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;Lorg/jsoup/nodes/Document$a;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "html":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->M()Lorg/jsoup/nodes/h;

    move-result-object v1

    instance-of v1, v1, Lorg/jsoup/nodes/f;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->M()Lorg/jsoup/nodes/h;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/f;

    invoke-static {v1}, Lorg/jsoup/nodes/f;->e(Lorg/jsoup/nodes/h;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {v0}, Lorg/jsoup/nodes/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->aa()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/i;->a:Lorg/jsoup/nodes/h;

    instance-of v1, v1, Lorg/jsoup/nodes/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/i;->a:Lorg/jsoup/nodes/h;

    check-cast v1, Lorg/jsoup/nodes/f;

    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/b/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->X()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/i;->c(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 100
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 103
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/i;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/b;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/jsoup/nodes/i;->e()V

    .line 155
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/h;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
