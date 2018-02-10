.class public Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credentials"
.end annotation


# instance fields
.field public final email:Ljava/lang/String;

.field public final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;->email:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$Credentials;->password:Ljava/lang/String;

    .line 48
    return-void
.end method
