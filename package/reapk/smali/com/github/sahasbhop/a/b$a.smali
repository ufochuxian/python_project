.class public Lcom/github/sahasbhop/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/sahasbhop/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 1
    .param p1, "numPlays"    # I
    .param p2, "autoPlay"    # Z
    .param p3, "showLastFrameOnStop"    # Z

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput v0, p0, Lcom/github/sahasbhop/a/b$a;->a:I

    .line 193
    iput-boolean v0, p0, Lcom/github/sahasbhop/a/b$a;->b:Z

    .line 194
    iput-boolean v0, p0, Lcom/github/sahasbhop/a/b$a;->c:Z

    .line 203
    iput p1, p0, Lcom/github/sahasbhop/a/b$a;->a:I

    .line 204
    iput-boolean p2, p0, Lcom/github/sahasbhop/a/b$a;->b:Z

    .line 205
    iput-boolean p3, p0, Lcom/github/sahasbhop/a/b$a;->c:Z

    .line 206
    return-void
.end method
