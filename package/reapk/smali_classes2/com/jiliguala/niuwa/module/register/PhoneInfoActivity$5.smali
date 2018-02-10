.class Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b3b1ac3d9eb05dbL


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 374
    const-string v0, "CanSkip"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "Type"

    const-string v1, "Sign Up"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method
