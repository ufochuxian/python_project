.class public Lcom/youzan/androidsdk/c/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/h;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/youzan/androidsdk/c/f/h;->b:I

    .line 42
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "skuId"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/h;->a:J

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/h;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/youzan/androidsdk/c/f/h;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "activityType"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/youzan/androidsdk/c/f/h;->f:I

    .line 74
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "kdtId"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/h;->d:J

    .line 58
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityAlias"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/h;->g:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "fansType"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/youzan/androidsdk/c/f/h;->h:I

    .line 90
    return-void
.end method

.method public c(J)V
    .locals 1
    .param p1, "goodsId"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/h;->e:J

    .line 66
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/h;->d:J

    return-wide v0
.end method

.method public d(J)V
    .locals 1
    .param p1, "fansId"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/h;->i:J

    .line 98
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/h;->e:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/youzan/androidsdk/c/f/h;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/youzan/androidsdk/c/f/h;->h:I

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/h;->i:J

    return-wide v0
.end method
