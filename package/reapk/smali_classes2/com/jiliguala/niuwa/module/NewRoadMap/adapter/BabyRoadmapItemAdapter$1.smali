.class Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->processShowGuideView(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->showGuideView(Landroid/view/View;)V

    .line 48
    return-void
.end method
