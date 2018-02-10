.class public Lcom/youzan/androidsdk/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:D

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->a:I

    return v0
.end method

.method public a(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/c;->d:D

    .line 66
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "useWxPay"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->a:I

    .line 42
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "kdtId"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/c;->i:J

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderFrom"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/c;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->b:I

    .line 50
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "goodsId"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/c;->j:J

    .line 114
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/c;->h:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "skuId"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->c:I

    .line 58
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityAlias"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/c;->m:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public d()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/c;->d:D

    return-wide v0
.end method

.method public d(I)V
    .locals 0
    .param p1, "orderType"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->e:I

    .line 74
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->g:I

    .line 90
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0
    .param p1, "activityType"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->k:I

    .line 122
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->g:I

    return v0
.end method

.method public g(I)V
    .locals 0
    .param p1, "activityId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/youzan/androidsdk/c/f/c;->l:I

    .line 130
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/c;->i:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/c;->j:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/youzan/androidsdk/c/f/c;->l:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/c;->m:Ljava/lang/String;

    return-object v0
.end method
