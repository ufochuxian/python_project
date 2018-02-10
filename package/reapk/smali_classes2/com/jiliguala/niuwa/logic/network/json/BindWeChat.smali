.class public Lcom/jiliguala/niuwa/logic/network/json/BindWeChat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2341cdce37004e3L


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/BindWeChat;->code:Ljava/lang/String;

    .line 15
    return-void
.end method
