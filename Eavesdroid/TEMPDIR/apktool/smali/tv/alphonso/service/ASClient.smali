.class public Ltv/alphonso/service/ASClient;
.super Ljava/lang/Object;
.source "ASClient.java"


# static fields
.field public static ACS_SCENARIOS_COMPLETE_NOTIFICATION:J


# instance fields
.field public clockSyncInfo:Z

.field public messenger:Landroid/os/Messenger;

.field public miscFlagsNotification:Z

.field public notificationsFlags:J

.field public started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-wide/16 v0, 0x1

    sput-wide v0, Ltv/alphonso/service/ASClient;->ACS_SCENARIOS_COMPLETE_NOTIFICATION:J

    return-void
.end method

.method constructor <init>(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    .line 19
    iput-boolean v0, p0, Ltv/alphonso/service/ASClient;->started:Z

    .line 20
    iput-boolean v0, p0, Ltv/alphonso/service/ASClient;->clockSyncInfo:Z

    .line 21
    iput-boolean v0, p0, Ltv/alphonso/service/ASClient;->miscFlagsNotification:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/alphonso/service/ASClient;->notificationsFlags:J

    .line 23
    return-void
.end method


# virtual methods
.method public updateMessenger(Landroid/os/Messenger;Z)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "f"    # Z

    .prologue
    .line 27
    iput-object p1, p0, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    .line 28
    iput-boolean p2, p0, Ltv/alphonso/service/ASClient;->started:Z

    .line 29
    return-void
.end method
