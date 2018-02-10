.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$10;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->onCreate(Landroid/os/Bundle;)V
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
.field private static final serialVersionUID:J = -0x2c8e81e98365eaeeL


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$10;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 429
    const-string v0, "Type"

    const-string v1, "Sign Up"

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method
