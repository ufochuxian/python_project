.class public final Lcom/squareup/okhttp/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/x$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/v;

.field private final b:Lcom/squareup/okhttp/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/squareup/okhttp/o;

.field private final f:Lcom/squareup/okhttp/p;

.field private final g:Lcom/squareup/okhttp/y;

.field private h:Lcom/squareup/okhttp/x;

.field private i:Lcom/squareup/okhttp/x;

.field private final j:Lcom/squareup/okhttp/x;

.field private volatile k:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/x$a;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/x$a;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->a:Lcom/squareup/okhttp/v;

    .line 52
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->b(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->b:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->c(Lcom/squareup/okhttp/x$a;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/x;->c:I

    .line 54
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->d(Lcom/squareup/okhttp/x$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->e(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/o;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->e:Lcom/squareup/okhttp/o;

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->f(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    .line 57
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->g(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/y;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->g:Lcom/squareup/okhttp/y;

    .line 58
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->h(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/x;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->h:Lcom/squareup/okhttp/x;

    .line 59
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->i(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/x;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->i:Lcom/squareup/okhttp/x;

    .line 60
    invoke-static {p1}, Lcom/squareup/okhttp/x$a;->j(Lcom/squareup/okhttp/x$a;)Lcom/squareup/okhttp/x;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->j:Lcom/squareup/okhttp/x;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/x$a;Lcom/squareup/okhttp/x$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/x$a;
    .param p2, "x1"    # Lcom/squareup/okhttp/x$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/x;-><init>(Lcom/squareup/okhttp/x$a;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/v;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->a:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/x;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget v0, p0, Lcom/squareup/okhttp/x;->c:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/x;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/o;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Lcom/squareup/okhttp/o;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/p;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/y;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->g:Lcom/squareup/okhttp/y;

    return-object v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->h:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->i:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/x;->j:Lcom/squareup/okhttp/x;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/x;->a:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/p;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/x;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/x;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/squareup/okhttp/x;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/x;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/o;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Lcom/squareup/okhttp/o;

    return-object v0
.end method

.method public g()Lcom/squareup/okhttp/p;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    return-object v0
.end method

.method public h()Lcom/squareup/okhttp/y;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/x;->g:Lcom/squareup/okhttp/y;

    return-object v0
.end method

.method public i()Lcom/squareup/okhttp/x$a;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/squareup/okhttp/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/x$a;-><init>(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x$1;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/squareup/okhttp/x;->c:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 146
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public k()Lcom/squareup/okhttp/x;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/x;->h:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method public l()Lcom/squareup/okhttp/x;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/x;->i:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method public m()Lcom/squareup/okhttp/x;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/squareup/okhttp/x;->j:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v1, p0, Lcom/squareup/okhttp/x;->c:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/a/j;->b(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 192
    :cond_0
    iget v1, p0, Lcom/squareup/okhttp/x;->c:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public o()Lcom/squareup/okhttp/d;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/x;->k:Lcom/squareup/okhttp/d;

    .line 206
    .local v0, "result":Lcom/squareup/okhttp/d;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/squareup/okhttp/d;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/okhttp/d;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/x;->f:Lcom/squareup/okhttp/p;

    invoke-static {v1}, Lcom/squareup/okhttp/d;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/d;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/okhttp/d;
    iput-object v0, p0, Lcom/squareup/okhttp/x;->k:Lcom/squareup/okhttp/d;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/x;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/x;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/x;->a:Lcom/squareup/okhttp/v;

    .line 217
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
