.class La/a/b/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field final synthetic m:La/a/b/c;


# direct methods
.method constructor <init>(La/a/b/c;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, La/a/b/c$d;->m:La/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, -0x1

    iput v0, p0, La/a/b/c$d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/b/c$d;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    iput v0, p0, La/a/b/c$d;->h:I

    iput-boolean v0, p0, La/a/b/c$d;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 301
    iget v0, p0, La/a/b/c$d;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
