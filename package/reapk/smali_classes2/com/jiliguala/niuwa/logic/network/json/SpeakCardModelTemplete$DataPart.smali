.class public Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public cts:Ljava/lang/String;

.field public noscore:Z

.field public sentences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete$SpeakSentence;",
            ">;"
        }
    .end annotation
.end field

.field public typ:Ljava/lang/String;

.field public videourl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
