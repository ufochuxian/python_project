.class Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/an;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;Landroid/support/v4/app/an;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->c:Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->a:Landroid/support/v4/app/an;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->a:Landroid/support/v4/app/an;

    const v1, 0x7f090158

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/AliFeedBackActivity$1;->a:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()I

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
