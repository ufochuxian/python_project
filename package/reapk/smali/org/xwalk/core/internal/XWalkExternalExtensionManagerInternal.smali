.class public abstract Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# instance fields
.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V

    .line 45
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 46
    return-void
.end method


# virtual methods
.method public getViewActivity()Landroid/app/Activity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Landroid/app/Activity;

    .line 60
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPath"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V

    .line 122
    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 123
    return-void
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public onPause()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 112
    return-void
.end method
