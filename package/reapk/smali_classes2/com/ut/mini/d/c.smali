.class public Lcom/ut/mini/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/d/c;->b:Landroid/content/Context;

    .line 10
    iput-boolean v1, p0, Lcom/ut/mini/d/c;->c:Z

    .line 11
    iput-boolean v1, p0, Lcom/ut/mini/d/c;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ut/mini/d/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ut/mini/d/c;->b:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "aDebugLogFlag"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ut/mini/d/c;->c:Z

    .line 23
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ut/mini/d/c;->c:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/d/c;->d:Z

    .line 31
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ut/mini/d/c;->d:Z

    return v0
.end method
