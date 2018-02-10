.class public abstract Lcom/mob/tools/gui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mob/tools/gui/MobViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 17
    return-void
.end method

.method public a(II)V
    .locals 0
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 21
    return-void
.end method

.method final a(Lcom/mob/tools/gui/MobViewPager;)V
    .locals 0
    .param p1, "mvp"    # Lcom/mob/tools/gui/MobViewPager;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/mob/tools/gui/j;->a:Lcom/mob/tools/gui/MobViewPager;

    .line 11
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mob/tools/gui/j;->a:Lcom/mob/tools/gui/MobViewPager;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mob/tools/gui/j;->a:Lcom/mob/tools/gui/MobViewPager;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/MobViewPager;->setAdapter(Lcom/mob/tools/gui/j;)V

    .line 29
    :cond_0
    return-void
.end method
