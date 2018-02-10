.class public abstract Landroid/support/v4/app/ay$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "t"
.end annotation


# instance fields
.field e:Landroid/support/v4/app/ay$d;

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ay$t;->h:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1883
    return-void
.end method

.method public a(Landroid/support/v4/app/ay$d;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/ay$d;

    .prologue
    .line 1861
    iget-object v0, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    if-eq v0, p1, :cond_0

    .line 1862
    iput-object p1, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    .line 1863
    iget-object v0, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ay$d;->a(Landroid/support/v4/app/ay$t;)Landroid/support/v4/app/ay$d;

    .line 1867
    :cond_0
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1891
    return-void
.end method

.method public d()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1870
    const/4 v0, 0x0

    .line 1871
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Landroid/support/v4/app/ay$t;->e:Landroid/support/v4/app/ay$d;

    invoke-virtual {v1}, Landroid/support/v4/app/ay$d;->c()Landroid/app/Notification;

    move-result-object v0

    .line 1874
    :cond_0
    return-object v0
.end method
