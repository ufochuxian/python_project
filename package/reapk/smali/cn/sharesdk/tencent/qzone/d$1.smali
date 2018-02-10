.class Lcn/sharesdk/tencent/qzone/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/d;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d$1;->a:Lcn/sharesdk/tencent/qzone/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    new-instance v0, Lcn/sharesdk/tencent/qzone/d$1$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/tencent/qzone/d$1$1;-><init>(Lcn/sharesdk/tencent/qzone/d$1;)V

    .line 203
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/d$1$1;->start()V

    .line 204
    return-void
.end method
