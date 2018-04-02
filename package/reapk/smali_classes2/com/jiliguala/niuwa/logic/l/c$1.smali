.class Lcom/jiliguala/niuwa/logic/l/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/l/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/l/c;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/l/c;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/c$1;->b:Lcom/jiliguala/niuwa/logic/l/c;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/l/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c$1;->b:Lcom/jiliguala/niuwa/logic/l/c;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/l/c;->a(Lcom/jiliguala/niuwa/logic/l/c;)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/c$1;->b:Lcom/jiliguala/niuwa/logic/l/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/l/c$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/l/c;->a(Lcom/jiliguala/niuwa/logic/l/c;Ljava/lang/String;)V

    .line 107
    return-void
.end method
