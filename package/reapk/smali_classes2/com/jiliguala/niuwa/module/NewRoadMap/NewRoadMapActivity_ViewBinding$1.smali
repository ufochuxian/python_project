.class Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding$1;
.super Lbutterknife/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

.field final synthetic c:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding;Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding$1;->c:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {p0}, Lbutterknife/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity_ViewBinding$1;->b:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->onBuyAll()V

    .line 74
    return-void
.end method