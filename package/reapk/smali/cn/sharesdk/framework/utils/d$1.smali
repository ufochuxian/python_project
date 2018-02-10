.class Lcn/sharesdk/framework/utils/d$1;
.super Lcom/mob/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/utils/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/utils/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/utils/d;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/sharesdk/framework/utils/d$1;->a:Lcn/sharesdk/framework/utils/d;

    invoke-direct {p0}, Lcom/mob/a/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 16
    const v0, 0xeaab

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "SHARESDK"

    return-object v0
.end method
