.class Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->bindNormalView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

.field final synthetic b:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->b:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->b:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->access$100(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v2, "rid"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "lock"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$ForumMetaPart;->lock:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->b:Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;->access$100(Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/hotsubject/adapter/HotSubjectAdapter$1;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumSets$SingleForum;->_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Post Click"

    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    return-void
.end method
