.class public abstract Lcom/mob/tools/gui/f;
.super Lcom/mob/tools/gui/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/d;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(Lcom/mob/tools/gui/i;III)V
.end method

.method public abstract c(I)J
.end method

.method public abstract d(I)Ljava/lang/Object;
.end method

.method public e(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public abstract l()I
.end method

.method public abstract m()Z
.end method

.method public n()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
