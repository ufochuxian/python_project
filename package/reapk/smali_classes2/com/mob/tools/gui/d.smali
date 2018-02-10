.class public abstract Lcom/mob/tools/gui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mob/tools/gui/PullToRequestView;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 1
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRequestView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/d;->a:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/mob/tools/gui/d;->b:Lcom/mob/tools/gui/PullToRequestView;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mob/tools/gui/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 51
    return-void
.end method

.method protected b()Lcom/mob/tools/gui/PullToRequestView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mob/tools/gui/d;->b:Lcom/mob/tools/gui/PullToRequestView;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 55
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mob/tools/gui/d;->b:Lcom/mob/tools/gui/PullToRequestView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestView;->a()V

    .line 25
    return-void
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public abstract e()Lcom/mob/tools/gui/i;
.end method

.method public abstract f()Landroid/view/View;
.end method

.method public g()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method
