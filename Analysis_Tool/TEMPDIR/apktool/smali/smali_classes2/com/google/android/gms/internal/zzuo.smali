.class public Lcom/google/android/gms/internal/zzuo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appinvite/AppInviteInvitationResult;


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzais:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuo;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuo;->zzais:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getInvitationIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuo;->zzais:Landroid/content/Intent;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuo;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
