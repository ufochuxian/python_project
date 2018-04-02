.class Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blog/www/guideview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->showGuideView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->onShowGuideView()V

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;)V

    .line 322
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setShowGuideFlag()V

    .line 327
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->reportBeginnerGuideExit()V

    .line 332
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/util/n;->a:Z

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->onDismissGuideView()V

    .line 338
    return-void
.end method
