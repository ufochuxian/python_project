.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->addCourseFinishWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$3;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
