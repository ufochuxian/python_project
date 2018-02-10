.class Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;
.super Lbutterknife/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

.field final synthetic c:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;->c:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;->b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-direct {p0}, Lbutterknife/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment_ViewBinding$3;->b:Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->onPengYouQuanClick()V

    .line 80
    return-void
.end method
