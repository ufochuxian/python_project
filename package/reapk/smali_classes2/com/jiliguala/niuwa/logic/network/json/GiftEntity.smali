.class public Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public theme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GiftEntity;->theme:Ljava/lang/String;

    .line 12
    return-void
.end method
