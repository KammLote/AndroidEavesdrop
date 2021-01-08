.class final Lcom/google/android/gms/internal/rc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdK:Lcom/google/android/gms/internal/rs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/rs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/rc;->zzcdK:Lcom/google/android/gms/internal/rs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qr;

    new-instance v1, Lcom/google/android/gms/internal/tl;

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/android/gms/internal/rc;->zzcdK:Lcom/google/android/gms/internal/rs;

    invoke-static {v3}, Lcom/google/android/gms/internal/rs;->zzi(Lcom/google/android/gms/internal/rs;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/rc;->zzcdK:Lcom/google/android/gms/internal/rs;

    invoke-static {v4}, Lcom/google/android/gms/internal/rs;->zze(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/qo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zze(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method
