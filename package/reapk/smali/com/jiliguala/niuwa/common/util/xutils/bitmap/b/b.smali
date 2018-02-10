.class public abstract Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jiliguala/niuwa/common/util/xutils/a$a;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/jiliguala/niuwa/common/util/xutils/a$a",
            "<*>;)J"
        }
    .end annotation
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "defaultConnectTimeout"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->c:I

    .line 61
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "expiry"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->b:J

    .line 53
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "defaultReadTimeout"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->d:I

    .line 69
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/b/b;->d:I

    return v0
.end method
