.class public Lcom/c/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/a/b;


# static fields
.field private static final a:F


# instance fields
.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/a/a/a/a/a;-><init>(F)V

    .line 18
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "from"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/c/a/a/a/a/a;->b:F

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-array v0, v5, [Landroid/animation/Animator;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/c/a/a/a/a/a;->b:F

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    return-object v0
.end method
