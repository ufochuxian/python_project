.class Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;->a:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 197
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;->a:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->access$100(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;

    .line 198
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Post List View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter$1;->a:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->access$200(Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete$Data;)V

    .line 200
    return-void
.end method
