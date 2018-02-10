.class final Lcom/jiliguala/niuwa/logic/j/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/j/b;->a(Landroid/content/Context;ZZLcom/jiliguala/niuwa/logic/j/c;Landroid/view/View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/j/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/j/b$1;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/b$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/b$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;Z)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Review Action"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/b$1;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 78
    return-void
.end method
