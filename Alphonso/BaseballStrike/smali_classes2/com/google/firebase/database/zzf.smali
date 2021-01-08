.class final Lcom/google/firebase/database/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYM:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzbYQ:Lcom/google/firebase/database/Transaction$Handler;

.field private synthetic zzbYR:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzf;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzf;->zzbYQ:Lcom/google/firebase/database/Transaction$Handler;

    iput-boolean p3, p0, Lcom/google/firebase/database/zzf;->zzbYR:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzf;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/firebase/database/zzf;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/firebase/database/zzf;->zzbYQ:Lcom/google/firebase/database/Transaction$Handler;

    iget-boolean v3, p0, Lcom/google/firebase/database/zzf;->zzbYR:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/Transaction$Handler;Z)V

    return-void
.end method
