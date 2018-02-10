.class Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;->a:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$b;-><init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public a(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 593
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 597
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 613
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 601
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    .line 605
    return-void
.end method
