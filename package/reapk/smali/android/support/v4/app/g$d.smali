.class Landroid/support/v4/app/g$d;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/g$c;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/g$c;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/app/g$c;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    .line 86
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/g$c;->a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/g$c;->a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/g$c;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/g$c;->a(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/g$c;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/g$c;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 93
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v4/app/g$d;->a:Landroid/support/v4/app/g$c;

    new-instance v1, Landroid/support/v4/app/g$d$1;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/app/g$d$1;-><init>(Landroid/support/v4/app/g$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/g$c;->a(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/g$a;)V

    .line 134
    return-void
.end method
